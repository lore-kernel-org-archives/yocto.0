Subject: Auto upgrade helper Verification requirements #gstreamer #iso #yocto
To: yocto@lists.yoctoproject.org
From: ksmanjunath681@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (165.225.122.154)
X-Originating-Platform: Windows Chrome 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Jul 2021 07:06:20 -0700
Message-ID: <YiCT.1627394780337084471.VueM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pXfhOV1JkazpuBlP2Yvg"

--pXfhOV1JkazpuBlP2Yvg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have gone through documentation of the auto upgrade helper ,like how to u=
se and prerequisites and all.
Can i get any examples like how to use the helper tool to upgrade a recipe=
,
Also how can i verify this tool like how it is working
for verifying i took a poky( *warrior* ) layer as a reference=C2=A0example=
 .
With this i checked out older
commit hash ( https://git.yoctoproject.org/ cgit/cgit.cgi/poky/commit/?h=
=3D warrior&id=3D 0c011f61e67b33746b201db99bd258 42c083cfa7 ( https://git.=
yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dwarrior&id=3D0c011f61e67b33=
746b201db99bd25842c083cfa7 ) ).
so that when i use the auto upgrade tool on any recipe which had older cha=
nges can get updated to current commit changes.
With this when i checked recipes and their versions map there were some re=
cipes which had this version difference(eg: python: 3.7.2 present 3.7.7).
Now if I run the tool to update the python recipe (like *upgrade-helper.py=
 python* ), I don't=C2=A0see any changes in the recipe at all.
I have followed=C2=A0the steps documented here:
https://docs.yoctoproject.org/ 3.2.4/dev-manual/dev-manual- common-tasks.h=
tml#using-the- auto-upgrade-helper-auh ( https://docs.yoctoproject.org/3.2.=
4/dev-manual/dev-manual-common-tasks.html#using-the-auto-upgrade-helper-auh=
 ).

Are these steps followed for verification steps=C2=A0 correct or if you ca=
n suggest any other procedure if you can suggest that will be helpful

--pXfhOV1JkazpuBlP2Yvg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">I have gone through documentation of the auto upgrade help=
er ,like how to use and prerequisites and all.</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Can i get any examples like how to use the helper tool to=
 upgrade a recipe,</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Also how can i verify this tool like how it is working</d=
iv>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">for verifying i took a poky(<strong>warrior</strong>) lay=
er as a reference&nbsp;example .&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">With this i checked out older</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">commit hash (<a style=3D"color: #1155cc;" href=3D"https:/=
/git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dwarrior&amp;id=3D0c011=
f61e67b33746b201db99bd25842c083cfa7" target=3D"_blank" rel=3D"noopener" dat=
a-saferedirecturl=3D"https://www.google.com/url?q=3Dhttps://git.yoctoprojec=
t.org/cgit/cgit.cgi/poky/commit/?h%3Dwarrior%26id%3D0c011f61e67b33746b201db=
99bd25842c083cfa7&amp;source=3Dgmail&amp;ust=3D1627472875842000&amp;usg=3DA=
FQjCNGJya_u4JM6dXx-Z6IDZtz7kN5-DA">https://git.yoctoproject.org/<wbr />cgit=
/cgit.cgi/poky/commit/?h=3D<wbr />warrior&amp;id=3D<wbr />0c011f61e67b33746=
b201db99bd258<wbr />42c083cfa7</a>).</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">so that when i use the auto upgrade tool on any recipe wh=
ich had older changes can get updated to current commit changes.</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">With this when i checked recipes and their versions map t=
here were some recipes which had this version difference(eg: python: 3.7.2 =
present 3.7.7).</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Now if I run the tool to update the python recipe (like&n=
bsp;<strong>upgrade-helper.py python</strong>), I don't&nbsp;see any change=
s in the recipe at all.</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">I have followed&nbsp;the steps documented here:</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;"><a style=3D"color: #1155cc;" href=3D"https://docs.yoctopr=
oject.org/3.2.4/dev-manual/dev-manual-common-tasks.html#using-the-auto-upgr=
ade-helper-auh" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"=
https://www.google.com/url?q=3Dhttps://docs.yoctoproject.org/3.2.4/dev-manu=
al/dev-manual-common-tasks.html%23using-the-auto-upgrade-helper-auh&amp;sou=
rce=3Dgmail&amp;ust=3D1627472875842000&amp;usg=3DAFQjCNE-8GR2CXjQwmQneXibFG=
5MzpQPYg">https://docs.yoctoproject.org/<wbr />3.2.4/dev-manual/dev-manual-=
<wbr />common-tasks.html#using-the-<wbr />auto-upgrade-helper-auh</a>.</div=
>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">&nbsp;</div>
<div style=3D"color: #222222; font-family: Arial, Helvetica, sans-serif; f=
ont-size: small;">Are these steps followed for verification steps&nbsp; cor=
rect or if you can suggest any other procedure if you can suggest that will=
 be helpful</div>

--pXfhOV1JkazpuBlP2Yvg--
