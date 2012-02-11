Return-Path: <dsmoot@sparxeng.com>
Received: from mail.sparxeng.com (unknown [173.11.255.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E26F9E0059A
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2012 11:52:25 -0800 (PST)
Received: from SPXServer01.corp.sparx.net ([fe80::6170:7e9f:11cc:b07b]) by
	SPXServer01.corp.sparx.net ([fe80::6170:7e9f:11cc:b07b%10]) with mapi;
	Sat, 11 Feb 2012 13:52:41 -0600
From: David Smoot <dsmoot@sparxeng.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Routerstation returning to root file system on internal flash
Thread-Index: AQHM6Pa2xhPpOhInqke6jfxI09kS3A==
Date: Sat, 11 Feb 2012 19:52:23 +0000
Message-ID: <CF54C32B-A1BB-4E1D-9A8D-0C02A2F17551@sparxeng.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 12 Feb 2012 14:07:49 -0800
Subject: Routerstation returning to root file system on internal flash
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
X-List-Received-Date: Sat, 11 Feb 2012 19:52:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CF54C32BA1BB4E1D9A8D0C02A2F17551sparxengcom_"

--_000_CF54C32BA1BB4E1D9A8D0C02A2F17551sparxengcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I want to experiment with putting my root file system on my routerstation p=
ro on the internal flash.

I followed the directions from http://www.yoctoproject.org/download/bsp/ubi=
quiti-networks-routerstation-pro-routerstationpro-0 to load the kernel into=
 flash and to modify the bootloader to mount the root file system on extern=
al storage:

>> exec -c "console=3DttyS0,115200 root=3D/dev/sda1 rw rootdelay=3D2 board=
=3DUBNT-RSPRO"

Now I want to put the root file system back into internal flash but I don't=
 seem to know what the internal device node is:

>>VFS: Cannot open root device "rom" or unknown-block(2,0)
>>Please append a correct "root=3D" boot option; here are the available par=
titions:
>>0800         7822456 sda  driver: sd
>> 0801         7821432 sda1 00000000-0000-0000-0000-000000000000

Any suggestions?

David



--_000_CF54C32BA1BB4E1D9A8D0C02A2F17551sparxengcom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <af7bb7f0-1074-44aa-afe5-14863e75fd48>
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -we=
bkit-line-break: after-white-space; ">I want to experiment with putting my =
root file system on my routerstation pro on the internal flash.<div><br></d=
iv><div>I followed the directions from&nbsp;<a href=3D"http://www.yoctoproj=
ect.org/download/bsp/ubiquiti-networks-routerstation-pro-routerstationpro-0=
">http://www.yoctoproject.org/download/bsp/ubiquiti-networks-routerstation-=
pro-routerstationpro-0</a>&nbsp;to load the kernel into flash and to modify=
 the bootloader to mount the root file system on external storage:</div><di=
v><br></div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span></div><div><span style=3D"color: rgb(76, 67, 63); font-family: Arial=
, Helvetica, Tahoma, Verdana, 'Bitstream Vera Sans', sans-serif; font-size:=
 14px; font-style: normal; font-variant: normal; font-weight: normal; lette=
r-spacing: normal; line-height: 18px; orphans: 2; text-align: -webkit-auto;=
 text-indent: 0px; text-transform: none; white-space: normal; widows: 2; wo=
rd-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width:=
 0px; background-color: rgb(255, 255, 255); display: inline !important; flo=
at: none; ">&gt;&gt; exec -c &quot;console=3DttyS0,115200 root=3D/dev/sda1 =
rw rootdelay=3D2 board=3DUBNT-RSPRO&quot;</span></div><div><span style=3D"c=
olor: rgb(76, 67, 63); font-family: Arial, Helvetica, Tahoma, Verdana, 'Bit=
stream Vera Sans', sans-serif; font-size: 14px; font-style: normal; font-va=
riant: normal; font-weight: normal; letter-spacing: normal; line-height: 18=
px; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform:=
 none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size=
-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 2=
55, 255); display: inline !important; float: none; "><br></span></div><div>=
<font class=3D"Apple-style-span" color=3D"#4c433f" face=3D"Arial, Helvetica=
, Tahoma, Verdana, 'Bitstream Vera Sans', sans-serif"><span class=3D"Apple-=
style-span" style=3D"font-size: 14px; line-height: 18px;">Now I want to put=
 the root file system back into internal flash but I don't seem to know wha=
t the internal device node is:</span></font></div><div><font class=3D"Apple=
-style-span" color=3D"#4c433f" face=3D"Arial, Helvetica, Tahoma, Verdana, '=
Bitstream Vera Sans', sans-serif"><span class=3D"Apple-style-span" style=3D=
"font-size: 14px; line-height: 18px;"><br></span></font></div><div><font cl=
ass=3D"Apple-style-span" color=3D"#4c433f" face=3D"Arial, Helvetica, Tahoma=
, Verdana, 'Bitstream Vera Sans', sans-serif"><span class=3D"Apple-style-sp=
an" style=3D"font-size: 14px; line-height: 18px;"><div>&gt;&gt;VFS: Cannot =
open root device &quot;rom&quot; or unknown-block(2,0)</div><div>&gt;&gt;Pl=
ease append a correct &quot;root=3D&quot; boot option; here are the availab=
le partitions:</div><div>&gt;&gt;0800 &nbsp; &nbsp; &nbsp; &nbsp; 7822456 s=
da &nbsp;driver: sd</div><div>&gt;&gt; 0801 &nbsp; &nbsp; &nbsp; &nbsp; 782=
1432 sda1 00000000-0000-0000-0000-000000000000</div><div><br></div><div>Any=
 suggestions?</div><div><br></div><div>David</div><div><br></div><div><br><=
/div></span></font></div></body></html>=

--_000_CF54C32BA1BB4E1D9A8D0C02A2F17551sparxengcom_--
