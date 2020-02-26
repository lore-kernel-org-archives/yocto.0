Subject: setxkbmap equivalent in a Yocto Project based Distro #raspberrypi #rdk #yocto
To: yocto@lists.yoctoproject.org
From: riky.8@outlook.it
X-Originating-Location: Cuceglio, Piedmont, IT (93.63.187.38)
X-Originating-Platform: Linux Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 26 Feb 2020 07:17:45 -0800
Message-ID: <8tBF.1582730265405660808.aY1I@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="FMIOi3mfmwZxqFnJDcW4"

--FMIOi3mfmwZxqFnJDcW4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

setxkbmap it

doesn't work.
How i configure the keyboard layout in RDK Video IP (A Yocto Project based=
 Distro)?

____________________________________________________________________

Reply:

The answer is simply:

loadkeys it

Equivalent at:

loadkeys /usr/share/keymaps/i386/qwerty/it.map.gz

--FMIOi3mfmwZxqFnJDcW4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<pre style=3D"margin-bottom: 1em; padding: 12px 8px; font-variant-numeric: =
inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-heig=
ht: inherit; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Liber=
ation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New',=
 monospace, sans-serif; vertical-align: baseline; box-sizing: inherit; widt=
h: auto; max-height: 600px; background-color: var(--black-050); border-radi=
us: 3px; overflow-wrap: normal; color: #242729; border: 0px initial initial=
;"><code style=3D"margin: 0px; border: 0px; font-style: inherit; font-varia=
nt: inherit; font-weight: inherit; font-stretch: inherit; line-height: inhe=
rit; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mo=
no', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospa=
ce, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inhe=
rit; white-space: inherit;">setxkbmap it
</code></pre>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">doesn't work.<br style=3D"box-sizing: inherit;" />=
How i configure the keyboard layout in RDK Video IP (A Yocto Project based =
Distro)?<br /><br />_______________________________________________________=
_____________<br /><br />Reply:</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">The answer is simply:</p>
<pre style=3D"margin-bottom: 1em; padding: 12px 8px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-hei=
ght: inherit; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Libe=
ration Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New'=
, monospace, sans-serif; vertical-align: baseline; box-sizing: inherit; wid=
th: auto; max-height: 600px; background-color: var(--black-050); border-rad=
ius: 3px; overflow-wrap: normal; color: #242729; border: 0px initial initia=
l;"><code style=3D"margin: 0px; border: 0px; font-style: inherit; font-vari=
ant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inh=
erit; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation M=
ono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monosp=
ace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inh=
erit; white-space: inherit;">loadkeys it
</code></pre>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">Equivalent at:</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans-s=
erif; font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear=
: both; color: #242729;">&nbsp;</p>
<pre style=3D"margin-bottom: 1em; padding: 12px 8px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-hei=
ght: inherit; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Libe=
ration Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New'=
, monospace, sans-serif; vertical-align: baseline; box-sizing: inherit; wid=
th: auto; max-height: 600px; background-color: var(--black-050); border-rad=
ius: 3px; overflow-wrap: normal; color: #242729; border: 0px initial initia=
l;"><code style=3D"margin: 0px; border: 0px; font-style: inherit; font-vari=
ant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inh=
erit; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation M=
ono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monosp=
ace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: inh=
erit; white-space: inherit;">loadkeys /usr/share/keymaps/i386/qwerty/it.map=
.gz</code></pre>

--FMIOi3mfmwZxqFnJDcW4--
