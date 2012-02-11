Return-Path: <dsmoot@sparxeng.com>
Received: from mail.sparxeng.com (unknown [173.11.255.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E08E3E01206
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2012 12:27:13 -0800 (PST)
Received: from SPXServer01.corp.sparx.net ([fe80::6170:7e9f:11cc:b07b]) by
	SPXServer01.corp.sparx.net ([fe80::6170:7e9f:11cc:b07b%10]) with mapi;
	Sat, 11 Feb 2012 14:27:28 -0600
From: David Smoot <dsmoot@sparxeng.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Routerstation returning to root file system on internal flash
Thread-Index: AQHM6Pa2xhPpOhInqke6jfxI09kS3JY4ibcA
Date: Sat, 11 Feb 2012 20:27:10 +0000
Message-ID: <7A496883-172F-4029-B0C9-EAD3070849C6@sparxeng.com>
References: <CF54C32B-A1BB-4E1D-9A8D-0C02A2F17551@sparxeng.com>
In-Reply-To: <CF54C32B-A1BB-4E1D-9A8D-0C02A2F17551@sparxeng.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 12 Feb 2012 14:07:49 -0800
Subject: Re: Routerstation returning to root file system on internal flash
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
X-List-Received-Date: Sat, 11 Feb 2012 20:27:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7A496883172F4029B0C9EAD3070849C6sparxengcom_"

--_000_7A496883172F4029B0C9EAD3070849C6sparxengcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Never mind, I figured my error out another way.  Thanks for reading if you =
see this.

David

On Feb 11, 2012, at 1:52 PM,  wrote:

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




--_000_7A496883172F4029B0C9EAD3070849C6sparxengcom_
Content-Type: text/html; charset="us-ascii"
Content-ID: <2b18cbb6-c3d5-4c55-a057-fe9bc134a779>
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -we=
bkit-line-break: after-white-space; ">Never mind, I figured my error out an=
other way. &nbsp;Thanks for reading if you see this.<div><br></div><div>Dav=
id</div><div><br><div><div>On Feb 11, 2012, at 1:52 PM, &nbsp;wrote:</div><=
br class=3D"Apple-interchange-newline">
<div style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line=
-break: after-white-space; ">I want to experiment with putting my root file=
 system on my routerstation pro on the internal flash.<div><br></div><div>I=
 followed the directions from&nbsp;<a href=3D"http://www.yoctoproject.org/d=
ownload/bsp/ubiquiti-networks-routerstation-pro-routerstationpro-0">http://=
www.yoctoproject.org/download/bsp/ubiquiti-networks-routerstation-pro-route=
rstationpro-0</a>&nbsp;to load the kernel into flash and to modify the boot=
loader to mount the root file system on external storage:</div><div><br></d=
iv><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span></=
div><div><span style=3D"color: rgb(76, 67, 63); font-family: Arial, Helveti=
ca, Tahoma, Verdana, 'Bitstream Vera Sans', sans-serif; font-size: 14px; fo=
nt-style: normal; font-variant: normal; font-weight: normal; letter-spacing=
: normal; line-height: 18px; orphans: 2; text-align: -webkit-auto; text-ind=
ent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacin=
g: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; bac=
kground-color: rgb(255, 255, 255); display: inline !important; float: none;=
 ">&gt;&gt; exec -c &quot;console=3DttyS0,115200 root=3D/dev/sda1 rw rootde=
lay=3D2 board=3DUBNT-RSPRO&quot;</span></div><div><span style=3D"color: rgb=
(76, 67, 63); font-family: Arial, Helvetica, Tahoma, Verdana, 'Bitstream Ve=
ra Sans', sans-serif; font-size: 14px; font-style: normal; font-variant: no=
rmal; font-weight: normal; letter-spacing: normal; line-height: 18px; orpha=
ns: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; wh=
ite-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);=
 display: inline !important; float: none; "><br></span></div><div><font cla=
ss=3D"Apple-style-span" color=3D"#4c433f" face=3D"Arial, Helvetica, Tahoma,=
 Verdana, 'Bitstream Vera Sans', sans-serif"><span class=3D"Apple-style-spa=
n" style=3D"font-size: 14px; line-height: 18px;">Now I want to put the root=
 file system back into internal flash but I don't seem to know what the int=
ernal device node is:</span></font></div><div><font class=3D"Apple-style-sp=
an" color=3D"#4c433f" face=3D"Arial, Helvetica, Tahoma, Verdana, 'Bitstream=
 Vera Sans', sans-serif"><span class=3D"Apple-style-span" style=3D"font-siz=
e: 14px; line-height: 18px;"><br></span></font></div><div><font class=3D"Ap=
ple-style-span" color=3D"#4c433f" face=3D"Arial, Helvetica, Tahoma, Verdana=
, 'Bitstream Vera Sans', sans-serif"><span class=3D"Apple-style-span" style=
=3D"font-size: 14px; line-height: 18px;"><div>&gt;&gt;VFS: Cannot open root=
 device &quot;rom&quot; or unknown-block(2,0)</div><div>&gt;&gt;Please appe=
nd a correct &quot;root=3D&quot; boot option; here are the available partit=
ions:</div><div>&gt;&gt;0800 &nbsp; &nbsp; &nbsp; &nbsp; 7822456 sda &nbsp;=
driver: sd</div><div>&gt;&gt; 0801 &nbsp; &nbsp; &nbsp; &nbsp; 7821432 sda1=
 00000000-0000-0000-0000-000000000000</div><div><br></div><div>Any suggesti=
ons?</div><div><br></div><div>David</div><div><br></div><div><br></div></sp=
an></font></div></div></div><br></div></body></html>=

--_000_7A496883172F4029B0C9EAD3070849C6sparxengcom_--
