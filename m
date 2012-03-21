Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA7FFE0044D
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 14:28:50 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so1346078pbb.35
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 14:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bmstppQHnkXGp8M8Fe3P7gD8ZJ0pe9+GTWf9GakkUGY=;
	b=Ur6+N5psu3TzLoSdWF41XygdgF93lr99IubaRedES7xlDkH5OoK7PDBZChWVft+iRv
	xN0LiHIMCaizYiHHAMGf2UhNjIqEdTWAgxi0CPK95gs3XejtpISrDWM0yFvpnUqHAbSD
	MdvOEF+Qz77ldZ+zGnaqxKh6uR7nAewtpriGf80gyqdyq9JAyQdjdtT4I79DdRwFUQJt
	ifRta9CZANRP4iLAuuiS4ayOkGbEGjUChApOmiWFL8BrpplA10xtV+5Iaj/66U6qWHAI
	BJ23xNxxb0eg2FRqzPN7rWPJDJiakx2/z1x4bQkyAApNMu6sLnMuVNFHL9tSKsxwj0vW
	t2cw==
MIME-Version: 1.0
Received: by 10.68.201.201 with SMTP id kc9mr2969560pbc.50.1332365330540; Wed,
	21 Mar 2012 14:28:50 -0700 (PDT)
Received: by 10.68.20.134 with HTTP; Wed, 21 Mar 2012 14:28:49 -0700 (PDT)
In-Reply-To: <1332362567.2322.222.camel@elmorro>
References: <CADzUK1L1JEveHaVgdXRUGh5a=GtfDnu6hFtcUt1vSmGkAyOVjg@mail.gmail.com>
	<1332361435.2322.209.camel@elmorro>
	<CADzUK1LbmYVNKsBGMBCaJs4GqPMh+8D-51D8tEvHV29rsEiWJg@mail.gmail.com>
	<1332362567.2322.222.camel@elmorro>
Date: Wed, 21 Mar 2012 17:28:49 -0400
Message-ID: <CADzUK1JtSDOp=3U3R14o_roY4scPc+EqV9P54aTiD695u8Faww@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Graphics Acceleration on crownbay - 1.2M3 + meta-intel tip
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Mar 2012 21:28:51 -0000
X-Groupsio-MsgNum: 5446
Content-Type: multipart/mixed; boundary=e89a8ff1c0803cea4604bbc77a49

--e89a8ff1c0803cea4604bbc77a49
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

>> >> Minor correction to the subject - I am using 1.2M3, not 1.2M2
>> >>
>> >> On Wed, Mar 21, 2012 at 4:14 PM, Autif Khan <autif.mlist@gmail.com> w=
rote:
>> >> > I am trying to get hardware accelerated graphics (video in particul=
ar)
>> >> > to work on my crownbay based hardware. I have EMGD 1.10 driver
>> >> > integrated and working. The evidence for this is that when I use
>> >> > glxgears (form mesa-demos) I get 115 fps instead of 4-5 fps.
>> >> >
>> >> > This is good, however, when I go over to the web2 browser (enabled =
by
>> >> > defining WEB =3D "web-webkit" for recipe task-core-apps-x11-pimlico=
) - I
>> >> > do not get graphics acceleration for javascript graphics. I also do
>> >> > not get graphics acceleration when I watch an MP4 movie. I get 2-3 =
fps
>> >> > instead of the standard 25 or 29 fps.
>> >> >
>> >> > This was not the case when Yocto used EMGD 1.8 driver - video worke=
d
>> >> > fine - I am not sure about accelerated javascript based graphics in
>> >> > browser as I was not as far ahead in the project.
>> >> >
>> >> > Is this a known issue?
>> >> >
>> >
>> > When I tested video using gst-launch, I saw the same thing, which was
>> > due to a missing libva-tpi. =A0The latest commit in meta-intel added t=
hat
>> > and fixed the problem for me.
>> >
>> > commit 162f3d1d3c538d7582a5e81205a9cdab74125b2b
>> > Author: Tom Zanussi <tom.zanussi@intel.com>
>> > Date: =A0 Mon Mar 12 19:57:29 2012 -0500
>> >
>> > =A0 =A0ia32-base: add libva display dependencies to emgd xserver
>> >
>>
>> I did a build today with tip - I have confirmed that I have this in the =
source.
>>
>> What files should have been added to the root filesystem image as a
>> reult of adding libva-tpi, libva-glx and libva-egl?
>>
>
> You should see those shared libraries in /usr/lib

I think that I do:

root@crownbay:/usr/lib# ls -l *libva*
lrwxrwxrwx    1 root     root            19 Mar 21 17:38
libva-egl.so.1 -> libva-egl.so.1.0.12
-rwxr-xr-x    1 root     root          3040 Mar 21 17:07 libva-egl.so.1.0.1=
2
lrwxrwxrwx    1 root     root            19 Mar 21 17:38
libva-glx.so.1 -> libva-glx.so.1.0.12
-rwxr-xr-x    1 root     root         14868 Mar 21 17:07 libva-glx.so.1.0.1=
2
lrwxrwxrwx    1 root     root            19 Mar 21 17:38
libva-tpi.so.1 -> libva-tpi.so.1.0.12
-rwxr-xr-x    1 root     root          3856 Mar 21 17:07 libva-tpi.so.1.0.1=
2
lrwxrwxrwx    1 root     root            19 Mar 21 17:38
libva-x11.so.1 -> libva-x11.so.1.0.12
-rwxr-xr-x    1 root     root         28476 Mar 21 17:07 libva-x11.so.1.0.1=
2
lrwxrwxrwx    1 root     root            15 Mar 21 17:38 libva.so.1 ->
libva.so.1.0.12
-rwxr-xr-x    1 root     root         68816 Mar 21 17:07 libva.so.1.0.12

The older image did not have egl, glx and tpi

However, when I execute gst-launch -v playbin2 uri=3Dfile:///media/hdd/BBB.=
ogv

I get a lot of "There may be a timestamping problem, or this computer
is too slow." warnings.

Attached are the logs created by the above command.

Is there something else that needs to be done?

--e89a8ff1c0803cea4604bbc77a49
Content-Type: application/x-gzip; name="log.gz"
Content-Disposition: attachment; filename="log.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_h02vwoy20

H4sICIdDak8AA291dC50eHQA7J1rcxQ5loa/8ysq9hNsYJCUUkpyLBtBd9MdRDA9LPTM7n4ilLqY
2im7vFVlGubX73OyDGvTGHqAaW6iosOZSqV0dC7vOed1Ofpx3e2WJ0eL0+VpXS1P6mK3Xjy8+5fH
935Y3Lp169rtn7a7h6v04rvliTk85WLiQsnoXx7d/6Hmdak8OjzbLMt8w2N1uNiw4sF01lrdHByn
5wfb5d/r4s5Cvedy5yudr3KgP2yZcrZJu+X65EOWOtvW8/OJ7u4sfrz74PG991yrrH89Wa1T+cBl
uGWFf2nLVT28ffv2cS3LdPtpKbe/++67W+ujZ//ynuvm9clJzaKwg+1preUD7Lhdn22ymPA6E39E
0MebfON89L2WlKevHpnDVw/27/3y4rT+uDwp91b1uJ7sDnfcN+5vyU6pHG43meOl0y0SpdPT1TLP
fnF7fXR07eHLcFhuFw8f3Xv05wcP7v/803uHxNsF/fPR0Q/1+Oz5ITsXuVCvRFye/O1KGT++IH86
W+2W/3FWz+rhsVz+r1xiuJcxfO7zIoz7FNvvlsfvjyMfevQXuyoHNyp67cwf5gaMzp4A1KTVEz24
6txkXznFM5Zf335+sHta15t0c/Hrsuye3rm+PNnd0NGom4undXn0dHc+ogIjbZOOKxhY71zncg7t
G8be1jdJAs/r6iAR53l3MKPkhSlaZmx3m5qOn9ZU6ubO9b073Pi3RVDejmF0Y/Nm1GpQRmmlfFDK
WrW/4HKQH/OlUvr8p8y7+K/N/5TKCBr0xVXNsJ/hwhi9GoOpVsa9UWMe42jcxbnKcviBV/j4QQ9y
7RgZZJT/Xu3KLubiLlPNxYTmp5jLOOkwuRRttEkrP8Rcx0GH7AwD1qBNuRvlYr6z6rf/tG626tEa
zGbjZD3CNefVZGMYp+iSYX0VRxuSLsr6MsQ4hTKOdlAcfzKO3bTJ0drRmFmpQ9RZFcUMrccwKTea
wAnnGXo/IzEjh1GZrJ2KwQbO3NAZa9o2xah9GaPjn9VWm2KKjjoqp2xjWskl55DDZOWTlHyCDGQf
9p/R7j9OvfwM+eLHhMsfbS9+lBxjUqhU82wYhoK1s6p60GlIvO9VVeX8abQOt6mao+oyDM6zV9VG
Y+8hceIyeluYOQzeKoc+CM48sImtzo/eR6R1Nrjs2mhwGzt6bKhZIZg2DvsPd05j0Vf3AUnCy7tx
MO3/n32MD2eTj2WfbBT6uXQ3vHZnX7vj/tId95fuMPulu/DaXUCDpuXJF6VQqR6mak0oVdUU4lSm
OOJppVhPMKiBqAjRGFexScgRx0kp6jSOqNfUbAm1akfVxlDTaKfqB1VSIUjzKK7rqi/TFHy1sWQ7
2JxTza6EYLTPQaztXAqiY1eHNkRPtJopDYVHcQh4a0pYRmXnB3d+x86D1TrmNEara9HVu5IjXkMU
T4OefK668UZwFbSOZWo4V6hlEDHbkDjPKOElswcT2d+VpnIco0pDm6yaiko+lFBHVzis8ihhFqlO
0ZZpnKYSzBQ4Hke3rmnj2S+ZMg5R+ZKJVKIoteY1kc5CqDSnovSUvHHemOCnCcFs9HKgFKyPMQNE
icjPGs1npwKaUsVYBdBpO5QypQo2TsjuI7MsIsWqXPIO3XpCgrMHn9GC9WawYzLgohUxanKm5JpD
NXmoqqHZ82dD1mNTOoJJHNtMCtMPutr86q1gC0rDjqMaWNK0FnTNPk+VJxmhRw+ACAxNwBCINU4J
RFJtMN7Px8NBGWSJ6mryMmdyasRocVIhjklPwUWB9VaBXjNMbQiClmCPqQGdG6Jdp5bRYXYVfyum
FoM1Sh5iCHaYQOwBJ2x2QkQAFR8hgEHalJO85TF5q3hiVJEpQ83ZjiCKiq0VfG9SxToCkUiS6aX4
2MZk2zC0sViD/+cSvEU3xmND5TIasKFyEyQecDzToh1qE/0Xa9HeRHBlA9hgKFN1SGMdC7YtNU6Z
ZOZEOqYqMA3UnaorDrfTLpVMJAyTtR7fECuaoeUi6Sy2QRFjRADptMXCyadRYqMG5QaHasmyOGvm
JUdkGB8T4Ukkj6og9OBJPBKC+BC5qZY2BdbAcLi3cRGdpuTIQZEV9YhassJPMZTTvEseogIJYxsR
0FUcblDeVMIVHWZiwGcMhxNLGiqe/InEZqyDyOJtHbVoaop4h4pu0tZSA0Vdg2iCtC+qBEMMDl4a
hq4DgT6qVOtILJDBQU82k3QZk7e8FfFAzoKNcLTR5UhCYM/K8bwSNZgwEgGTqbEUIqoYjoQGFUcl
d7ZgKebQrwcskm6IFCsS6mwrYOTIDBP5eER75wuh4uhEVCdT9IhJKU0MCSJ6shFvTbk24ESQElfi
jFgENWdcxSQNKOoCxOx9eKQiQFTwCqzVOISvPhGlNWWUO0cXGBSaogjQBNVY2J9TA4lTI0cNHAbg
wZOJmzppF8M0hNZAZSKCpfBmwhgTc6/JecibkMTGSEmipllQ0D83VcuI/VCm9tRfWII6w4yWZMpq
6EdhTkeCblERRoSPI31MxDAgNkzFe+J0kuMhmquZMkNxcHJz0/tnQyJEhgloUtmSYEfBOsoiTeWC
9dwUFJjJsDfkjknwhTxHCDU8wCCcJcjYrUTwxrPcUO1sPa8GtgkIA6INjHOuCdcFxKV8q/iTdUU1
/Bu1E/A5IBmBUWNt5D9JB8QhReIAvgA7CdeI1GPDpGIiKAoaBTIMa4QgyYVsiYSRAMQbBbrBr1QH
622YMRApcXjqnkK9oSQxOEAWWGsF76AQSypKAAg4E5raKzMETuwNxjHALgviLuAJxncm8V5BPkXk
gBQoM1OaZVYYRItWsBDVZj8G2VfU7uWtyoEZOp9FueMbxSG4ksA1VSfqqrEEqlGpkcNIshoqQZzI
iCRl7skvBa1QG2UxNd4QOQkXpvK+yh6g1USpJ/8VSZIG9KXC1mBsjInivMikivRO3tINb9CRmPcA
lx0JfCrYYsm9VBS4JvmJQJIUDEZJZpbkSprMoUntQWHgY55hAjmIDlzJR4kbTcUIZBAhY6CcKM5I
QFrSCTnBEP5t8BpA4XVTGkXQRDwznSpRymPQcpK85TXZkUxLzpe3vJ+Ks3gYUWDsfCqXLFpxuGwh
+6QGDA8qFO1IXjidRX3FlULRDEzinFRbkwP8lCMf1MZ7ZLAwHza5MQ7o1JO4SGS2JpoUEmGRxEuZ
rUJL2oj74w4Sa1hhAJUaIzqT9gvg2IoDAQLeoys2jxnI8qxMsi5k8XGMcbYPVjdBkNcTwXYOSEE9
QSwMbsPkK31FS1ZhEwJpVFOWNMCegYPTkxA5TmPLIQEDgWoO8wLqZGQEnLTMZJ51tFDkREEsXEIi
ljzKAcEbbNKqStbPcYVdqR0zIEYxCgAWWincmAigCAFFHGAHEjdP2YDmBVocwID1ZiDbWwwgo4WS
ooRKlXlhJNEKxJMV6ZByrpIYZoAmO9JbkX2wBkXuQNndYsM8owPyqHE8IUx5UgpC0546wrw1EHmU
1KomR44gbDFdnAPKZSlfkG8EF1my6IyHophK5THS3xWZRg4AkKTQG/CaOd1TbBHWFixg+kRENpo/
iqBIoUc+A39oXi0mayWJP9SWWJUuSxxQIsWTuSJOOSEREiOjy2q/WwxOjAGokNTYi1VMo8xBeYZi
ALGJ+pYqvQDmljaWNEt9TJmPnsQpDIAo5YhjIQooNE6k5lbwIzI2vSUYkpwj20gv9yomjMQONbsq
LKV8rYWqh9qsVRd4RaBQ0FxK3QBwSgVjWqi1UQDSnhBdgu0C4rmB/xQNDVNXwQDvqdknfF481GXJ
qkQzvodjRCTS4p8GoyCmETWGqqSKC0CoqJznlQawkmjmALICNPQW4OMofSbFRbPsIbUbmOTIpJGw
om0sLROFwCUlEtDkQGoa8rp3dbIu3QNVz+TxOFoqonGiPp9Qg2yvTWLLkZpRLAMIS+WW2B4HFLx3
4tCk3kJkORp3LTlAUfxFE1yR6a2Jes8NUHHBkdTcRj3XnATPOJe2emqjpcoj2gFEdhI0MVIVECyY
m0KhWXGuqMhO1aU00tBTf1NAUj5ro+I5+mYJiyIZgYpc60SNQaVEIUuJipPRioiHnWsRv9S+lBni
PJVwpdJxIzV+qENxtN5SS2O9IO1B9dKiEkWkPXtJfSMKEwCcZv2CFLhIEK4HLwa74pxJgmvecg50
HSXVxjk3Ik6V3jRMEvjAYWj0BonXWs4XNO9nzePiVAuUl9IqcbjJE5TS+SaAPROvVCWWkoWmAGwY
pDwcObZQTBmgGQjXCGY1CUmgUaw3eDpiQ+mBBtSQJNWNpCOqmqnSQrVQvBX3MDjQnIZoQ6QhGpuO
RugbRRJFKvwVzzUUNvSOMTadKhUHnmipnKJQU0a4GrG6tMTgJsDjpZibFUR2QxbUrdvciJSK2MlU
6fdYR1IPkSeFUuJJkdigsc+0qZKJlJRyEjv7FA8kUiK0CLIriYlhziosq0AhcjXdYkJL4GkjLvaW
5F12YMOiU6lSc2Ypooki+h8ptSdwPyqQBTVioDC/QN4Q6clAdJUgrJTeWAAroy4vuUhL903d78Wk
4dwhJDBE1CnRTSI/qR+/T2gXVDIAErWCkhbXNDo1UhXZt0nDIzblHVfEuSnMJNMJR2pR1USZVfcB
JGI3SQHi7BMN9n7fCkZSEEu3/p6xpxb//ocR1xd/gaA6WdzJ4k4Wd7K4k8WdLO5kcSeLO1ncyeJO
FneyuJPFnSzuZHEniztZ3MniThZ3sriTxd84WbzJnSvuXHHnijtX3LnizhV3rrhzxZ0r7lxx54o7
V9y54s4Vd664c8WdK+5cceeKO1fcueLOFXeuuHPFnSvuXHHnijtX3LnizhV3rrhzxZ0r7lxx54o7
V9y54s4Vd664c8WdK+5cceeKO1fcueLOFXeuuHPFnSvuXHHnijtX3LnizhV3rrhzxZ0r7lxx54o7
V9y54s4Vd664c8WdK/7queJfZuKX54d7CpjHb/7/HXamuDPFnSnuTHFnijtT3JnizhR3prgzxZ0p
7kxxZ4o7U9yZ4s4Ud6a4M8WdKe5McWeKv0WmeJN/QxRv0q8HL86e3Vy09eY47e5cb+uzTc437lvz
gdzw76Ce83q13hyw7Wb5/M71LT9Ojm5syw5x8tPN+jgdbJey9/mT/zmtR3/YF7EPF8fpOfv/vR7s
eW3RmvsU2++Wx5W91Sc5+otdlYOTFDy91VtEuH9yerZ7XFf4w3pzuJS77fnd7IAvH134Pyym1a/p
xfZg/Tc2+PHug8f33m95/RGWl9HH8osUGT1//9l6dTZrXt/ak/f/4PvHZ7v6XlvLqBgyMUeu757t
1nfPynI9T0tyJfPmR6ttujx6QAyepdXB/prHh4sdSmhtW3fv8KKrJXl2QZK/CnLM02YMeSnJf90/
Tkf18vglWZ4vZcLvl+ZtFse4IM2zenCaCstcv+wANxaz8J/f2lcFwi4dSZBdl71+SUcPltvdv95Y
qOcUH1bncOPr3I3S7488m0v+rbu92ft/qXUfWzsugJTVOl9wjL1DbPL7+toVpzjP0fO+5zm6rdZp
d3Oxz8WSQW2Yf12Zn6aTk7ra7gfNzUU9KUsZ2p4P0UbYS8l4eBuKX51IRNSfnq5fVRL6CxFzLn42
6+cvZOBULjCf/zyFvzpZ33r15K3ncp/yXO9y9NdL0E8g4rtj/I3fqvi8Jb34l4Kft6SfnU4vocUs
0RPkefJFCfpGIAifl/gy+nj+rtDjFyfS2p3QXGwO918f2l4YuvStpiefNMd8lFNs8ud4iIvNxb77
S3Pn9/kG6kWpL6f4L0vUNwarHj7fE1zpIp9jIr/cNCPU9+uTZ3WzO0yZi3eJzqZXibVdHp3Ucuf6
tF6vajq5sduc1deEvbko9fTi7btU8M863WcdEK9kf1S36fh0hVttzq++OvO85YhX2ehLOuNfZ3rs
cM+SfU3Ge/PBvgaTfRiR+C2o4vfVFl/jQd9cmZjP/PzvQRF+i78Ae50V62rYq+GNTj9+m8r5B8jH
N+tt+Jr19i6g+QZ+v/7RaJ2vGn3ewd3NJ/4tyfitK+KNgBK/LfW8H734jQXT699I2HNTz66mL785
rVzdwnRVvLnJ0d+uhq4MoW+xlLmolB9//BNLfL89PXx2FXd8US+bo+nmYjo9fWOPa+xvu2U7GA6+
qeXJcdr+bT82OiNHPdrUenJhWI9e/rKbJ9PqrF54cMAT740e/8l/5/9PUeQ3DUwzzTh/jy6nFbG3
lR/dxz6+Kq/ysq7Lq3T54V/x7Mr/2Mr/fSVdV+uHqvXN5eGbO6yvW9sPl6d1tTypi+V28fDRvUd/
fvDg3g+LW7duXXtcdzvyH0ucz9itFw8f3P3v+z//ND//uf66yKt1xkdf/iJUtP69DH27+VLJfhct
5D+soukQ/3Xp/stD+C9Sq18qwH90Zf/n3Uc/g9iHrLE+XtRVPa4nu8WnBZXDxd3Far1brNvi5V/c
pU1dTFXSTdmsT09ruXXtbilLOUZaYY/p7GixPGnrw2tH292UtnU2cr5uwjjeOFww+ERGZ4r5yXL7
ZLdeP1mhsMV1nn7i01775WnleMfpBUdcpIX8md92l45P5+y6WU8Y5eZivVnsnpKE8/r49GxXN5KQ
OcViu1r/equbsZuxm7GbsZuxm7GbsZuxm7Gb8TM14/fpjOYFFfBkc3a6WxwcLJ6mk7KSNV6N3rp2
/+Xl4f81cy07CMJA8Ff4BOURxZuJeDKaSDh4MiqFkPgKisG/l9aLRrGF7hRvPJKdnU3bhGF3rPBa
FfJNauL6UlCyXcHLyr+/WGxtEo41sG1uIm37/tA6XmpUqnEU/hCxlsF4shJv25Qb2GI9j2Yzs73O
2ojS2QAQAnHZlOdU4Fj0xKSjUUgYUjqy8TQMABkFwDYEC72ovICVUPp5AEQhJaPQmwLDICUi6zzC
AJBRIF6vWgPyJhDfhtlNUeyZpqgJKLXooIuqteJUutL1gtb4aUiCtp/o0gzc8PBpb+ukGbhhnm0c
nchCKpOm8UQyigbl9vzEybfZhVt53sRVnZVnF/ANNjTaybQLeAP0v1tzvmYAXe4KKYA3nFoR4LtQ
WgR4Bos0nbBDUY5OaRrzC4FePRUJsDzb7Ndu3HM9J0n+IZe+4zHP27rd5GLseLqf2TQ7xsFTkR5d
q/ukuq89or5pjvyFkBynOWMfUucDvqjAcWjkAAA=

--e89a8ff1c0803cea4604bbc77a49--
