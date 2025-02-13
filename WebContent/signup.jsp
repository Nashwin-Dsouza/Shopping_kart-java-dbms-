<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up:</title>
<style>
    body {
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOSqoDCGY7jLlI2-xOwPyFdWveL8b5O8qXbA&s'); /* Update the path to your image */
        background-size: cover;
        background-position: center center;
        background-repeat: no-repeat;
        height: 100vh;
        margin: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: flex-start;
    }
    .header {
        margin-top: 20px;
        text-align: center;
    }
    .logo {
        width: 100px; /* Adjust size as needed */
        height: 100px;
        border-radius: 50%;
        display: block;
        margin: 0 auto;
    }
    .container {
        background-color: transparent;
        padding: 20px;
        border-radius: 10px;
        border: 2px solid black;
        margin-top: 20px;
        box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 90%; /* Adjust width to fit smaller screens */
        max-width: 320px; /* Further reduce max width for laptops */
    }
    .form-group {
        margin-bottom: 15px;
        display: flex;
        align-items: center;
    }
    .form-group label {
        width: 100px; /* Set a fixed width for labels */
        margin-right: 10px; /* Space between label and input */
    }
    .form-group input {
        flex: 1;
        padding: 8px;
        box-sizing: border-box;
    }
    .form-group input[type="submit"] {
        width: auto;
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
    }
    .form-group input[type="submit"]:hover {
        background-color: #45a049;
    }
     .signup-btn {
            background-color: red;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 15px;
        }
        .signup-btn:hover {
            background-color: darkred;
        }
</style>
</head>
<body>
    <div class="header">
        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABklBMVEX///8ZSKD//v///v78//////3///v//P8ZSJ////oYSKL0//8YRJb///gRSZ/5//8APaCar8UAQJ729vZ7lsRCZqcISZwAQ5l4kMDF1uAXSKW2xN8ANJf///UAMpwJR5hYdrLh7vAAQJr2zcEANZMUTJkAOZHyUwf86+H52MrhYCnwXyTvjGmQpcgAQaPyWhvpVQAAL5IAO4vyz678WBrpqIT/+O/10LvpXRrD0eTxVh7xWwAAN6QAPqT3UgDlVgYwXKqru8wAJ4zobz/tmnjtt5j36dXnWjHyTBvfg1npeE3qaDXpYxLedEL02sH649bxu6nwmorgimnfZybrdlbsakzrgl7mZQLvtKvrn4XW4+zyspsdQYVLabCRp8DCW0pifa8AKJkuV5jKeG3axLzZd1zDvcy/qbUAE4jno3fekG7qWjn//OXRZTDqv5/mlml3jq343+Hmf0VIaJn4uqHjh1DZfV7tkHxofqH979HZY0fyp57xx579elDXZiLjRABBYJDL19WmuNocSILA2fN3iMAtZdgeAAAgAElEQVR4nO18jV/bSJpmWaoqWRJSYRtkEFaMHUkGHFuGNkY2AdvhI01CYzY9k504Cev27uze5DIJPem+7t6Zvcwy1//3vSX5AxJggM5Nhjk9v24CsizVU+/3WyUhFCFChAgRIkSIECFChAgRIkSIECFChAgRIkSIECFChAgRIkSIECFChAgRIkSIECFChAgRIkSIECFCBICMGdU0ATFEawsLNQ0OCZgxQcD0cw/tU4FQLAjWF9tbfqVQaS7t7exaSBKpiPHnHtknAgEmP60+rHocjWLR2/xy78ACwQrscw/t04BYLLXjF9ZBeo/u3bv36HGzsr9Z2OswVfpH0VJ196uC5/nbBzWCEUZa5/BRc91rvEGSTD732H45sCjig6Vq0V+tnTa6ta88v/KDJREJdPWzDe5TQKCMLe431r/qIDz2nKC32mqhuP9PGsMaud0MJYIXlrzCE0vAljz2KxLDdM3b39xBTCO3291Qpu15/lOLCaJMxmoqSCJjh439xiLG4u0OGRbbaVS3asQSwMWMtVSDcC/g1S+9RxYT5c85wF8MWfq6WDmAlOZjQWHB+pVXOcS3PGTgQ7/wBKsW/ZihgPFBwf+1Jn2GYX1KbHmVjiBq5+VnWFKfepU1drt96W7B/xXCMjsnx8aWKKwV/vmf1Nsb9bEq4UNv/TcXJi4ios3qlnB7PY0gS+iZV1lklwgJUpuU9rcb0qeAKI5+xViS73nN2mUR/ZnndW6vlkLEs35VXLLoJRSerxcW/3Yj+uUQKEqc1Ov1bk4Nfae2VfQ1DepDTCiF/yjBVKOEhJyFgOHa5xzxdSFoaNp5Ec9k7KTeevnj8dHco6KfOxUOhBAScCRU02Rg6B18xgFfG1Czr9TRUVo3JibiurmRtv/Fe/xioj/fmzlqt2dBtMFpVOP2KkiShFYLjYPbZIcCzj3ooqmkqSimaWYVJ/sv3tYLE/5MJycnbdt2J1rzM6WTOSDLAkV+Vmh0sPhXL/x3A4pmv0mhXlJ34knXdSdDGQKxZDLp5vPuJCCTySw/+Oabbx6k++96U//q+f/WTX3ucV8dzDpxEJ3PmkY+MRfgt97Sv89dAmD4H23A7C1hieWpeYRe6qaynEOWRjS612i+tuiFQNvrlQ5GhMi3RFMJmp9CqGWYuptDGkEi3oOIT8ULgbYh4svcvX7uoV8RFDsnFOu6oqdzRCSMM/RrmFwIyGma3xIL8LmHfkVI6oM6ZROxmDmhEij8MH0KDFVynviIwNsX216zc44ICYUkQcBEFBjWBIFcGlAwo5QrOSQW4YUE4XQDj+cbp5PJXwRh9n90SW5FiZsOE8DMBO23637tAg0EAhL6XRXKx48/EhCBVAhhgWoSv9BliZ8ggh1jzBgVBTEo0ih8b5wMMwL+ACbx04TduQcqybmmbvaxKFNRok/Wl15L51NkWKZo1at8+3FmLoqMYQwjZpoFo1VVfMnwCJIkzNMHjLWQGAiNjetRTGV+NfJpSpipLCZdznAaiTD7+PVT7+FP6vnnYgmr1g+N/cWPGVKrVtMkVZAokVVL1GqX6RhlGGkafIMyJgQtEan2mo17IxQ41jSg/4uYDfFyHnGGhjIPcyZh61V1v/rrhfPP1URBe+Z73v/c/egjvPDV462nr7EA58ivth7/vnPJPQli8t2nS/7DJx3efYUj7IslmLaB2InItL1XloQ+jSU6ECzqrmKU55FILOHNZrHoV/fOP1dgwkHFKxa9LXAmZ9tRIr5bKHrbyAJle1MoVnYua6mCU9kpFNcLheb+ohr0E+jdwtcL2GICSE6kEn5beKJJn4Zgyj7hDE2j/DNMmYifbPoNv9o8/2QJsz+uF4FhYYFJZykwSX613qisMU3d9fzKU+3SjqPw+mGx8fZwr+E/CXwqkhcL1f98jSWiYlES1OdfVj8Zw+5ynaB20jSSU3AviW1XOUP/goFJ7DkwbHiVGjA68xHWcGqrWvQXBGur6PmvpcsZ7m76jy1mVb0lK3BqIENvfU9kskQ1lRwWvOK9T8Vw7kGXohNgmC8BQ4wOGsDQ2zn/ZAxDAzP0im8x/cBXChjhTrO4uUd/t1kEUeLLVm80vND0/EV2UPUeaeF5dwu+X3hlMYli9kXD8z3O8BcvHkCORkqupKFS0tSTJQJRW6DfLRWa268FCGtgLTwgD0tggS/tC/QufL63i1O5U6BYhKGJ6LBQLL5teIVVSCSIJAnM6txdW6BQPqPawcEuRJPa4kEHCTIm33vrjw+XipXfMBXihYDvbnLVeAaZAF709oue90Tjk6bVOrs1pFF0sxwRBkZ6fQQMy3q8nIADEHi12sICgWAEvtqCscky1zZCZcvilOEDa3cXqyTxwL0zwDfHBIeL3+RtlYv4aY3/oUrs4Nf7zUbjVx24xOH7xiPwm52mv0RkgaIFUOVCtboK9irx2QM/VfSKle8Y6yz53NR/gNhDvn1SKRSXfkjddK0LPAtzIFig47IeS87xNgVkS4IkgqYQESYeqfWTqR7H1Ek9x78BJzDMK/3ERtkYID2FBgyx9XDf8x/uhiFOffPl/peF9WJ16YCgN+vVP4BIOoVqUZNVEX275e/7/p8EpkoSz/SAof/9l15lsfZ1tbj1B6/6W5ihxUqh4a1XK1vfwiBvkupDEqk+OAYF6JUNxa7LBG4FDDSGg4wpl3jnTibzybJZhnL4fsY5rjNIRngKKaJE3jEHmJxCNPSsjH1R8JvfhT0taddfL3y/s7PV3HxYY4eF6iOI452CvwRjpc+bXtVrNHaw1AHlgFwQGFZ2HxX3/UeN/cLBW997wqTX4LOefnf4633ve65dN2Eoit1vEuAS5stZxZ7VCKTWUACCzYkayh27k2ZcDwH/GnGlnOknGGJUhnuBDAef6fkppIUMBbzb8LwDyeJeSH5W8Z5A9lL7X4XKb9Dhug8MUQeUTtPwTqFRefa95zUOdt//4VBjhHKGKevrRnHda95Fr6qFJyD3TW/LYvj1Y6+5wI31+gwpltvfzIJRTE+Yut1FYXYvaEyyUMJOxmOKosSGiMdiih63s21ImkFnEpOjT5JThIWxAcyrWa0shquO7Nf7jV0ow9DBpvcEH1a4HeJvK94SJZq33lhFtS3P23rb2PwduJ5AhjW2sFX1Cm8IuucV9hh5C58/+2F7+7FXecPEc1b7/ioIRqUHXWDoQHnIGQbXwIKoqT23bI7ZjVgq5fSPwTeBYTx+OUP0eP1hDYPAIMA8RWvrwFAWDwrAEK01i1C/qLsVHxzT+w6DFDtgKOGDpcKqpuJ7fmEPk71qcX2zubnp+5s7GBzw9RkiGfVsVSQoH4/pdk4IZShLkvouqShZ4yOGMbPsdq/M8GnB70CFBG5y8y1e22x8hSDpa3CG3zUffo2hGF1rFP3GK6zKbCBDhg6egQohYPiEd/W8R8+ebT/b3t5e024ULkQL9VsMJJeJ6bqtDmQIqdt8Pq4bhv6xDGPJd+jKDHca3p6F8e6j9cYbvAYMFjFd9YrAcBFS2DXG2O5jSJB+h2RBHTAELyZKjAwYHlb8R7yTsGtBvBVu0sEUtJTd44nuchwsTBXCeZJw4o4Zj8dDG1RMUweqigLuJs49Lr2EIYZcpVgYrFyxnx5W/b2d5199/fVvF/AC6ON/rm4veY0lirWtde/hH/+02vCLYHeHGPwzzEChJvHACkUjuVdZfwIX22p4j3a+u9d4AuHrJvUwEVH3QQlJNGdzj6gOMk0590KJj8Tm6PFsFjwpiDSuZ00HsUsYEmG3sL+5iMN4SL/wq+Au/+vh7w/UFNkpVL3Ndd/b/9+Wqu0ubfoeJJ8F//tisXmABRUYetIwILBXHo/47KCyzq/gVQ6vL76QImp/00YS6QLDuAGjDGdp6r4z9qFZnffCTSWumyDG/BHSLmGo4s77xvtFEhTQkqAd/KrSfLz0Q0dNSSlrZ6lS2dp+v/kQaiT605OlSqHgv1p4vVd43+xI2p/eV97zqjngqO0VePWksoVXfrPpb31301KYu9I6ZDYBwxaTwu6RurIxtkDFzLvZ6WnHdSfioK4vcuEsXMBQwqmfOj+lpECGmiwwbfdgd8HiBCFiap1di+7+1AFNFCRc63Q6NQ0xa7FzsKCKqc5uh5JBWMffdjq7Gs8tSK3Dd7feNAVnqHcnB7M2CwyVaRhlMMz6ilMeu1F3qgsxjeXqM24yHp8ZeKOA4al4ONh/IqvgIS2BBOoOyZ0KlMUUS6XUVIpIWBUI43YmQ04OZCD/ExmiqobBvUAuJYw6bxrEeagSwWDhHEZv5GQCUAQeVGDyXBIY9ni/S6QinUrGQx01ylnTbvPWApcbUY+cdNcaOs3EhmIOEoIkZG3CgPhp8PYjIqkQ4jl+IlSH8z4gF/1xXYbqssNbnJxhPmBIqIR65kA2etlJ9iDZDrd+QY2RO1LHDCd5xqPEwqzt3I21wCv4KYrhb58BpLs8zxeBTzhDroCiKAu4P/IyprNxAhVVaAU4JXNzEpCYgpoEGE5M6DElNmEYIUOgAR+lQn0SB7xS4b/i4Ih46uO/CUE6lynxReBSMhQE1BrgwMYMFed+e3jyQNkEyn/CEBNKq5WNm/EWYApiNksN1fHU2QFCWY7/RAPufwuKtJQ54Wo+lYfysARpKqFU5AyNMNjHjA2upZB4UU2raXxYeDBodBRzWi3wwFnHyU9RLIF8UylNS2kpQRRSKXqWoTCkL1uY7wKs1VIpCeGxiVGZikErAUOYFuAvFPTCoSqE6pjeWOBk3q7D9KOZdMwEhgCovvG7pOkMxRi3E4xqBOopKRxi4DhABjjRAoZG+GNGwzXNstRcF5DDgcCgjhzKNPgLflDwyHNHR8dHR3OzKkvJ/LqjsXASMiBonkqEIlXtzgaL7BaEDeum3qbldokMvgVcRvIkmEqwyqmyaYwjvvuuzYt7mHRCQnKByuGE7rR0o/WiVVb6UzVcy831WnlnZSXb//NxOwcnCuJQQ+F/OaWpavtd39XzrXwr7TgvZhIq0cQRQ1E6OjoqcRwdgftW2z+3bDuTubO8Ml/qohtvFUylVxhnOJ80lfzckOGce5ohfOI6vdJcV9W0UwzFkt7KGlyGZtyZEtX2CyPt9FsOyLRctp3jHLLkATsSKLdUWjGTugJTkuWCb+n5lSOmjXIVDfKMch6Q3JjsSVMrbjoeg7LbMfRkfuVd/aYLUV23jyjMz7RpxlzOEIp8CvcyjFOlIc/ZknljYmZOomO3ISbSDuSqrYmWk9VL+Eegpuit1oThtCbiTivZnx1FQv4VXO878daLfhb4xTnH7ERcz/fro6HIalZxeA4BGX/LycOAYjxLhH91I7Zhz1y2znMJ5lzehtJY31SczPhu4FrPFk1QWGRbaaXfpiAMLQhyYsJogchAkK2WUzpa1v/Syuv9/oTu9PmRVgwS3iCVCcROS4ZjAEM+Ia2YGQgRvttaOUFa2BQV1CD2BBWawhN/Bbjy+iac68lWjjforo2SCyECFMSByJfpDo8KqlNWlA8YgmyAUE+l4DPhHElM6MEoDfiZfdnP69OtOJchRI8JroOG4tbRICik2NGdae53Ww4PLnGFf4n/7rSWIfEPvAhnqHzcVBgPoZ+jN2DYcxNQ5mtqWjcNe8QQMvGMET9zeUhd4mXdiW843UCEkMsm8lBPASagstKzUGJBcWXADyOos0wHEiJGw1iPEnf0rBGH4msiFgfLisGXDFA+w4G6e47KQxlewjCu3/8zu4EptuxZqiGasg3TcHPDo5C41VfyHwgR7s4HYGa72oAhuA3uC3g3DqRiKFypQMXCAxBvzGSC50tIhMyp7PA5gk+CLG/QvgPFUIyymxOuwDCmGGE4uzoEDRO8bOdETSZQACuGPWKIIOJ2+25QE+q8KjQMTtEBszecckslEuL90jIYyaCAUmJZLpEsCNEYGJOu6GYf6kCoOnDfBLGBWcWMeNl04LJ8+5UCc6LHTCPdC4ZzlqECFzLgfuDUgw4DwDHtLrmOngoWJt07rirIFpSHUEdMng05LJGdhNoBNG9wBz7yONwxcwxVIGc4rg/B60EduZHJ3J80zfjIS5krXRrk9fboiAnS5Q0g0M/BkWwsM/uxDBV+WyNuOPD74P5KDKoA7To9U03Q5jJ90CMNykND0fNni0yZSIlpl/e7+Ra30RCzjrmcI5Cin2EIQ3f7R/V6e2bFjI2P5hMgQfDU5bGy62nbNZKZJFAMK5i4afaC5ZKzDOGCy8sPMpB7gBccHlzJkes8jkQFrTTZQwLWUB3sUM+e/ZjJYG/dRM+x7fSptiL4lPIx+F96hqGuuCWVJ5E092fFHB0tzxAskll3NETHsae6DKvdYxu0NPymqS+rUJl9YIcQ5Ltqrt5znYHahzOGrvFIGZTY1s+TJQoFN6ons5CYfHgG5g1+JOXqU3ZyeA8wi6yRVgnUI2cYuiVkEbA5GXVXRgMyNuYJw6iUHulteWKWCJB6CnjWLWeDb5pmNtPGkL+dYWhDnKQihJEETM9ofsvz12EI6Rme3mjzX8gJRAuldcGJcEn1eCVmjpMAu06lswxB0cIKGPz5jyMZxoxp7tBaAZU4uGv9TteSwkYj6M3ognmuFCOGYHa63R4V9u3M+M56WhWvIUPIbiegssDAsJSPm7GXFzEEq0Ntd2RLMKISkuQzDMGlBHcmwPBktJ6hcIayaocpIJh6uoSHq/sEzSSHEsu/w3TsacB/p3kPN2wsiGqvPFZ7u3sNhgIhXRsqC74YXUrGlPT8hXMhg7bObIw8SFwJ+gKnGObfodAFwMTTun2aIaLdZT2gAnFnJWcJoQzBv9UzQ4aKo8pjhqYRs2dHjQVR69rl4X10cLtXb9oIGp2zs4yCDNExCCg7c9GJfAebXM/oI4axFkTxM93EGbCugCEl2uwZhhDu7wR9LSXmlPtcc0IhYC2VHjHMn2GYjSnj51mwpb4YaWk800ZXj4hQRpeSfSypkKzNQHoCxjCESGRRAmZhdwwqbxgPc0d5XNzMIome7Zfy/gcKKX7AEM3eD5yhojvlac4sXPxhp9tBtkoFaSxDpcX3vIXCYgT9eezJN67DEDR9Jj9PpFwXKn3FUSbHOZGIc4z3GsZPdgkaWxl7GpCFIF/Q1adoNnOW4RkZioOLEkpT2RHDtCqPGYLr7GM6fPoBtLU/dl2ZNrp6EQXa0gKXQWchWXupZJXymCFVX/zIQxQbMSQ0545jlTL9kQwvZMjt0BjboSwJwR4vsMPu+LwzdqgY+kqOm3RosFbOHXsaqPCubocyUt1kG1klSHxbcUOBNHkoQnS8sTEB1xrvcqYQ1Eb3iSszSLpoZeZDhoEvDf4KfClk9QOGaKp8ypfK3LMPGGb15BHEqHD1QMKlcW8dcudr5DQaymXAZ1k/qwKagNQiOTf6qO5C2jz5LkgXw13BEMeNMcP8iSzhq8rwTDy0c1a4z4mRujvSCd7HJHRkhxNKeQUqtJChmHPLzkiGE+o1Ij7kapN2TkJ9sHq+fXYyLPFFKuXSvLw2lOX+UVfl90a5oxXFDBjysg4qSc7magzJmZxG+UsXxC9D3t6dKAdHIdXIbvDlL3oqp1GUfleWMd81n+uX48EMQVWplCH1vvoSDTckF0u5F2B2bsww7Xo4QoJ66VCpzIm0OzE9//PMdD4PyWE4IIhtyjS7OkN0Oi8FVbFLOYxxrpQxY2HWFuSlMoTlM1mb+WKOwRDVOcj8jTCBBYbuHLnGc48imim3EKlDjMrZnGGolDJq39EHt1bikOMn8+lYWCkGR6EUSHKHdlU7FM/UFnCB/HJ/2rGTumOcqi0sEPUZhmA1K72Z3ooL/MzBBMXjK+o5jyZfCAlNg9BJgm+ftWNZZdDE4Du+B67PCNZ9eW/CgKonrGGgKp1wmIzwlRkG9eE4GXdiG6ZilvVhyRDWhzIE3zMMs1AklzeSUHYPwzAU4uD6tWssswlqeqOEyM89ygtgY8iQvSs78SBBC/oMvG/Bf3CGXE9Mx3HrvNIWr2qHQY2fzppDFYg7ujFhxBVePfHeSFDjE+GDGj9ohfCtEoNdBPxippujH26IvBQ5+/4cRa1jXgDHdMgrAi/138sb+ulm6RhxI2A5ORXK+qoMgz6Ne6oyORVXOcGr9mlM4077Qi7no+5m6oQ9KEF5yPeauAFDonVfJE1dUeIf34PPJZR8+LK9GOcxBPC9HR9fkLd5rtpri5mTPXzN1n4pCfGzyxm2QWxQ1oZTidQpO6ufx5DvN7F76LVwbYYCLt1xPr4imFbWvmq/NP9Ola63XYH8nITKYi5zonGGWcMYyFCSyOw7NzC+QR+NNxI5GdPML5cwDd/AE67jKyGCdXwyYqgMMWRIJHy0zC8YH14w9DJK2j7T8x7Hw+DMYQeT/5aZ55s0ryfDVv4lolN3IMSU8nC3PhouxMN/s+/uBPVp3HAc3gbVedxQ7kwPNnwFsk5sZJURQ21wdyxYIMMhQX06LAUESNJmnfy4VaoHPsSY7I+60KfyUv6UZx7CZJabBe9lQhr3IvHh8P86WDo5j9D0MnjGqTxEpenxhg4+Wd2jP9v3N3injc98eaPsur1ZOrYEjBN3kukB3Bk02BInClA9DQ/nJ1+iwTNNMsbS0UpmowwDH8jJnEwe8dbrBwwhPmTn1Z9dO6kEvttQyu6L4xy6Prou1EtBH4PM8J0Y82OGmGrc+HP1Um/amXBtN91/V6qr3CuOztHov8+McSKgwYYxuPD48NQRskKGVKYWUtu9F669wVfQJu0XP86pSBr7jpEMHbM8TzS1PTNt5G3bnpieglvfZEt7PX1/TuvecbvBBmEj3xszpDxzoFQLns0SVQDjL6rR+LNbI4ZnH4yi2AoGK7CzyT8Ln+ALVq8pCFLt1k+Ojo5O6pDxihYVTpWgQ4ZGGWZbFJCM1fDWsgZ57DX3eRNQqZO8Pau1M26OBAyTvXE3me+ApsEmfX7/4Kk8ka+x01MdZ/hUk0fb+GEuQhkKlMijwyI4kdDxDv7GcKXBxjIZviLhU0nYmKES7DyH0/lN+S/8RUDXfA8Hf8xwJul2SSnpqhqaL+u8eft5HwkdMdTN7PwvvhpMJpo2Vxia509VQoIajyVL8j8UQ0FT0+U+Qq5uMEHoQ7WdP/qHYigIVm55o4dyy0ZLE0SnbMbSiSswDHok19xldunZp671aRkiQZ51oRapuxAGNXVFAQd2Xp+OP2ECEAURHAPlDT7+eG7oN8ZnMaamct1uvT7Xbif4bpFEItFu860wuZQIvkYI3iHCt6GfMzn8ouKnZ0gEkshDRljKQ9SXeRtNT86dw5CzEuQBR4tna4T3kbjT787OnZRKM/PTfSdrP1h2nekfj0snc/wNKTz9G1yLaFZtd/fgYPHu3d/sAJ4/e/b8+erq6s7OG8Ddf1vsdBYWasGOp0/LMGhzu3XUy/MNiV0XUmr462OGgiTJWrCRBT5juW69nZiamX9puPwVEsvLdsaY7wGtYBdUAPhXrC0sLN49XF3dfvJ0a6n5HlB8uPXo+7fA7fBwDTgBKY4aIPgl3Ar3aRmCyb3bcHPIUdJQ7XVtzrArnJs2ML73qn00M9+fyAcvynD5u0Cc6anS3GyXq2oY0mhtobN2+Mcfvv/qa79SKLwvvPeXtu49e364drBbq8kIM5U/oT7cAYyxzBikEXAkUHz0yX0pYX8x8/XcipkvkeAJWb4Tg9+Jx2UUblRiXf5Q18u0nclsbCQhOZ+0l21nfgpkNnwMGgLxwrd3D5+9ffq4uVmoVCqFzULx0ZNnh2udWo2MvQwmAn9aSgzfOsFZhhkA4StJ4tAOs9lgH0fc1Hu/mKFGcrbiuBPleDKBCDDUjUzOIpoMqQkBI5s9Oe71V9x8Pm3wdy1MrLiQHvaOINWi3A5h4q1aZ21n9emWX1nf3Kx6m4Wmv/V0+zkwk9A1lhZOz7qaNoMt82ZM6V2jd38BQ1R/cOf+hmHo+TaS55IgQzenBWIrzUznMzbUErzeNcuTk8vuy5lSfSy21MLizurelt9sep7vedWGv/ToHlBbELlKyzIdJWbXA1UzGyavSLL5jV/OUICxdBPTK2Uz/aNKE8BQWfk/7eNpkNUk7/PxJlQ6mcm0ArnxJ+e5doHYVu9t+aCJ/LE6z6tUmltvd0BslFsW34RKRFDGwK6unz2IbGZqKihIZmauuXHm/OvxlyLNzrtK2ekeJZWsqdvJJJSCUJryZw1tuzVzUh+4SILEhTegkc1KhT8BXAzJPXp2yJ8lQAJWGRXBxEQJ8nXKF8Vu9NITyRoKDi7y6d47WXf02EQv2JWjx8GVmeWyDVrZ7g78KqktrD3fflwpALeGX/SKntf0H++tri38v3j35fB1A5/yHVRMnb9vgpI68ZhpbmTc/ky7HlgcaBrtHIK9Nfjrrn2/6Pt+tQAm92xtQUOnlxb/zmERdLyS1c180n3RK9WHvQKrc/eP/+U31wuN4G3eXrHRaPhb2292KQQwjCwLDPOzjvvqgDIWz0CU+3muy5BmQRXPamvPA3cCcmsUAb5fafpPV9dqmK/pCdzYRAHfGhkCQQHP5gZrdVrnzSoPA/xZcQgEnFyh0Hi10wmf5dJokH/wkpveGhlyEJ5E4drBzr2HRR7iGl9Wucf0fa/wGBTT4utCt+SVVxeAUq1z+PQxCG3f5x5z3+cv9ij4994sEBQ87YCF280QL/y+ss4fOG5wwQG7amF/73CR8Xf+QKTnK2m35aVeF4At+NXiABDLC1urizWKVbC08FWQoqbdppckngP+5G4Av1B4/PZw+HKhsGNxk/zr7w5sodBYArdS2Vo9sJDGhAtegnV7IXT+eX/z4b03uwTKIgoEr7NWfivAOg9/+OK1hiSJSliVblj8/D1DEF8jBvUUf28L4XK8Ne9DjBAhQoQIESJEiBAhQoQIESJEiBAhQoQIESJEiBAhQoQIESJEiBAhQoQIESJEiBDh/0/8X2zEbnsAAAAESURBVOrsN8Nhc1yhAAAAAElFTkSuQmCC" alt="Logo" class="logo"> <!-- Update the path to your logo -->
        <h2>Welcome to Our Service</h2>
    </div>
    <div class="container">
        <h2>Sign Up Form</h2>
        <form action="SignupServlet" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Sign Up" class="signup-btn">
            </div>
        </form>
    </div>
</body>
</html>