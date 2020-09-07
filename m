Subject: #yocto
To: yocto@lists.yoctoproject.org
From: jl@newtec.dk
X-Originating-Location: Hvidovre, Capital Region, DK (81.27.221.125)
X-Originating-Platform: Linux Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Sep 2020 02:11:46 -0700
Message-ID: <TYwB.1599469906654442203.Vf9T@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OrVubr0hnDlGnkxwzlIW"

--OrVubr0hnDlGnkxwzlIW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

How to handle multiple products ?

We have a builder project with poky, bsp, disto and individual product spe=
cific layers (10+) as git submodules.

We want to avoid that one product uses a .bb or .bbappend recipe from anot=
her product specific layer by accident/error.

How to do that ?

1) Is it possible only to include certain layers for each layer (product) =
?
2) Replace/modify bblayers.conf for each product
3) Split our builder project into smaller builder projects one for each pr=
oduct, only containing needed layers?
4) ?

Best regards,
Jan Lorenzen

--OrVubr0hnDlGnkxwzlIW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi</div>
<div>&nbsp;</div>
<div>How to handle multiple products ?</div>
<div>&nbsp;</div>
<div>We have a builder project with poky, bsp, disto and individual produc=
t specific layers (10+) as git submodules.&nbsp;</div>
<div>&nbsp;</div>
<div>We want to avoid that one product uses a .bb or .bbappend recipe from=
 another product specific layer by accident/error.</div>
<div>&nbsp;</div>
<div>How to do that ?</div>
<div>&nbsp;</div>
<div>1) Is it possible only to include certain layers for each layer (prod=
uct) ?</div>
<div>2) Replace/modify bblayers.conf for each product</div>
<div>3) Split our builder project into smaller builder projects one for ea=
ch product, only containing needed layers?</div>
<div>4) ?</div>
<div>&nbsp;</div>
<div>Best regards,&nbsp;</div>
<div>Jan Lorenzen</div>

--OrVubr0hnDlGnkxwzlIW--
