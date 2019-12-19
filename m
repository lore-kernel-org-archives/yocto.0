Subject: apparmor setup #yocto
To: yocto@lists.yoctoproject.org
From: hu.schlieben@codewrights.de
X-Originating-Location: Warendorf, North Rhine-Westphalia, DE (5.10.161.194)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Dec 2019 08:36:13 -0800
Message-ID: <lyds.1576773373989526666.E1JI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ODThBfflCBQyCzhKKWSK"

--ODThBfflCBQyCzhKKWSK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

i'm new here and not really shure this is the right place for this issue.

I try to get apparmor working using yocto. I tried using thud and zeus wit=
h the same result on apparmor_status:=C2=A0apparmor module is not loaded
Checking the kernel flags manually with=C2=A0bitbake -c menuconfig virtual=
/kernel shows that none of the relevant flags like CONFIG_SECURITY_APPARMOR=
 are set.
Setting these manually i see that the kernel parameters " apparmor=3D1 sec=
urity=3Dapparmor" are missing.

My assumption was that adding the apparmor recipe would do all these thing=
s.

Do i add the recipe somewhere completely wrong?
Do i possibly override apparmor with other recipes?

Any help would be greatly appreciated.

Best regards

hu

Should these

--ODThBfflCBQyCzhKKWSK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />i'm new here and not really shure this is the right place fo=
r this issue.<br /><br />I try to get apparmor working using yocto. I tried=
 using thud and zeus with the same result on apparmor_status:&nbsp;apparmor=
 module is not loaded<br />Checking the kernel flags manually with&nbsp;bit=
bake -c menuconfig virtual/kernel shows that none of the relevant flags lik=
e&nbsp;<span style=3D"color: #222222; font-family: 'Helvetica Neue', Arial,=
 sans-serif; font-size: 15px;">CONFIG_SECURITY_APPARMOR</span>&nbsp;are set=
.<br />Setting these manually i see that the kernel parameters "<span style=
=
=3D"background-color: #ebf1f5; color: #222222; font-family: monospace; fon=
t-size: 13px; white-space: pre-wrap;">apparmor=3D1 security=3Dapparmor" are=
 missing.</span><br /><br />My assumption was that adding the apparmor reci=
pe would do all these things.<br /><br />Do i add the recipe somewhere comp=
letely wrong?<br />Do i possibly override apparmor with other recipes?<br /=
><br />Any help would be greatly appreciated.<br /><br />Best regards<br />=
<br />hu<br /><br /><br /><br /><br /><br /><br />Should these&nbsp;<br /><=
br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

--ODThBfflCBQyCzhKKWSK--
