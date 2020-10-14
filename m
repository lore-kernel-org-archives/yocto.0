Subject: Re: Pinging problem
To: yocto@lists.yoctoproject.org
From: "jchludzinski" <jchludzinski@vivaldi.net>
X-Originating-Location: Herndon, Virginia, US (104.129.194.117)
X-Originating-Platform: Linux Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 14 Oct 2020 14:38:30 -0700
References: <GqDD.1602705385322002102.L0e6@lists.yoctoproject.org>
In-Reply-To: <GqDD.1602705385322002102.L0e6@lists.yoctoproject.org>
Message-ID: <21493.1602711510510267551@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NdUR2u9c8sMcwi2S6klP"

--NdUR2u9c8sMcwi2S6klP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After I checked the networking status: $ systemctl status networking
I found: " Unit networking.service is masked. "
So, I unmasked the service: $ systemctl unmask networking
Then started it: $ systemctl start=C2=A0networking
Then, check status: $ systemctl status networking

>=20
>=20
>> networking.service - LSB: Raise network interfaces.
>=20
>=20
>> Loaded: loaded (/etc/init.d/networking; generated)
>=20
>=20
>> Active: [[0;1;31mfailed[[0m (Result: exit-code) since Tue 2020-05-12
>> 15:18:58 UTC; 1h 14min ago
>=20
>=20
>> Docs: man:systemd-sysv-generator(8)
>=20
>=20
>> Process: 736 ExecStart=3D/etc/init.d/networking start [[0;1;31m(code=3D=
exited,
>> status=3D1/FAILURE)[[0m
>=20
>=20
>> May 12 15:18:58 arria10 systemd[1]: Starting LSB: Raise network
>> interfaces....
>=20
>=20
>> May 12 15:18:58 arria10 networking[736]: Configuring network interfaces=
...
>> ip: RTNETLINK answers: File exists
>=20
>=20
>> May 12 15:18:58 arria10 systemd[1]:
>> [[0;1;39m[[0;1;31m[[0;1;39mnetworking.service: Control process exited,
>> code=3Dexited, status=3D1/FAILUR
>=20
>=20
>> E[[0m
>=20
>=20
>> May 12 15:18:58 arria10 systemd[1]:
>> [[0;1;38;5;185m[[0;1;39m[[0;1;38;5;185mnetworking.service: Failed with
>> result 'exit-code'.[[0m
>=20
>=20
>> May 12 15:18:58 arria10 systemd[1]: [[0;1;31m[[0;1;39m[[0;1;31mFailed t=
o
>> start LSB: Raise network interfaces..
>=20
>

--NdUR2u9c8sMcwi2S6klP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin-bottom: 1rem; color: #2c363a; font-family: Roboto, sans-=
serif;">After I checked the networking status:&nbsp;<span style=3D"font-wei=
ght: bolder;">$ systemctl status networking</span><br />I found: "<em>Unit =
networking.service is masked.</em>"<br />So, I unmasked the service:&nbsp;<=
span style=3D"font-weight: bolder;">$ systemctl unmask networking</span><br=
 />Then started it:&nbsp;&nbsp;<span style=3D"font-weight: bold;">$ systemc=
tl start&nbsp;networking<br /></span>Then, check status:&nbsp;<span style=
=3D"font-weight: bold;">$ systemctl status</span><span style=3D"font-weigh=
t: bold;">&nbsp;</span><span style=3D"font-weight: bold;">networking</span>=
<span style=3D"font-weight: bold;"><br /></span></p>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #152a78; border-left-width: 2px; border-l=
eft-color: #152a78; border-right: 2px solid #152a78; background-color: rgba=
(241, 243, 244, 0.5); padding: 0px 0.4em; font-family: Roboto, sans-serif;"=
>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #205a24; border-left-width: 2px; border-l=
eft-color: #205a24; border-right: 2px solid #205a24; padding: 0px 0.4em;">n=
etworking.service - LSB: Raise network interfaces.</blockquote>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #205a24; border-left-width: 2px; border-l=
eft-color: #205a24; border-right: 2px solid #205a24; padding: 0px 0.4em;">&=
nbsp; &nbsp;Loaded: loaded (/etc/init.d/networking; generated)</blockquote>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #205a24; border-left-width: 2px; border-l=
eft-color: #205a24; border-right: 2px solid #205a24; padding: 0px 0.4em;">&=
nbsp; &nbsp;Active: [[0;1;31mfailed[[0m (Result: exit-code) since Tue 2020-=
05-12 15:18:58 UTC; 1h 14min ago</blockquote>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #205a24; border-left-width: 2px; border-l=
eft-color: #205a24; border-right: 2px solid #205a24; padding: 0px 0.4em;">&=
nbsp; &nbsp; &nbsp;Docs: man:systemd-sysv-generator(8)</blockquote>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #205a24; border-left-width: 2px; border-l=
eft-color: #205a24; border-right: 2px solid #205a24; padding: 0px 0.4em;">&=
nbsp; Process: 736 ExecStart=3D/etc/init.d/networking start [[0;1;31m(code=
=3Dexited, status=3D1/FAILURE)[[0m</blockquote>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #205a24; border-left-width: 2px; border-l=
eft-color: #205a24; border-right: 2px solid #205a24; padding: 0px 0.4em;">M=
ay 12 15:18:58 arria10 systemd[1]: Starting LSB: Raise network interfaces..=
..</blockquote>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #205a24; border-left-width: 2px; border-l=
eft-color: #205a24; border-right: 2px solid #205a24; padding: 0px 0.4em;">M=
ay 12 15:18:58 arria10 networking[736]: Configuring network interfaces... i=
p: RTNETLINK answers: File exists</blockquote>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #205a24; border-left-width: 2px; border-l=
eft-color: #205a24; border-right: 2px solid #205a24; padding: 0px 0.4em;">M=
ay 12 15:18:58 arria10 systemd[1]: [[0;1;39m[[0;1;31m[[0;1;39mnetworking.se=
rvice: Control process exited, code=3Dexited, status=3D1/FAILUR</blockquote=
>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #205a24; border-left-width: 2px; border-l=
eft-color: #205a24; border-right: 2px solid #205a24; padding: 0px 0.4em;">E=
[[0m</blockquote>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #205a24; border-left-width: 2px; border-l=
eft-color: #205a24; border-right: 2px solid #205a24; padding: 0px 0.4em;">M=
ay 12 15:18:58 arria10 systemd[1]: [[0;1;38;5;185m[[0;1;39m[[0;1;38;5;185mn=
etworking.service: Failed with result 'exit-code'.[[0m</blockquote>
<blockquote style=3D"margin-top: 2px; margin-bottom: 2px; overflow: hidden=
; text-overflow: ellipsis; color: #205a24; border-left-width: 2px; border-l=
eft-color: #205a24; border-right: 2px solid #205a24; padding: 0px 0.4em;">M=
ay 12 15:18:58 arria10 systemd[1]: [[0;1;31m[[0;1;39m[[0;1;31mFailed to sta=
rt LSB: Raise network interfaces..</blockquote>
</blockquote>

--NdUR2u9c8sMcwi2S6klP--
