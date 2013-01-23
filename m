Return-Path: <aalonso00@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D396E011C0
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 17:26:01 -0800 (PST)
Received: by mail-ie0-f171.google.com with SMTP id 9so8965742iec.16
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 17:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to:cc
	:content-type; bh=1+VOlHV1UIVAhYZiCZjYM680lCOLrV3yOJxM9cAUR8M=;
	b=S3NVy6pHtU4bfOWNr2ODNazMAOkWic9G0YnxY3yjgrnoCzUsWtOTxm141bhgrDRcWh
	CKNOq6IvGIF0E/3ESa2mIOkJ0V6oow5CWCBjuLJb1MBNpLa5unbc5vkvMCS1s8fLeSyY
	nIyVV1FGl0IzsYFFE6q32eeaMnuXZ8p+HpAJHt4tm5R50By3/T+uacllaTo89a2c8vYY
	NSF7tbrfY7N/6tBPZZkDvQ+5EnR+xf59zCtP5s6ldJb7fXpIWdBUliERt38OK1r+5EiP
	b+Bf2qi8OKWh9zha4RbRLdzLrXAYy26cPI7bklChZ1qwaXYERLVKtty++e+C1jaIkurc
	iBgA==
MIME-Version: 1.0
X-Received: by 10.50.207.70 with SMTP id lu6mr13903713igc.50.1358904361500;
	Tue, 22 Jan 2013 17:26:01 -0800 (PST)
Received: by 10.50.57.134 with HTTP; Tue, 22 Jan 2013 17:26:01 -0800 (PST)
Date: Tue, 22 Jan 2013 19:26:01 -0600
Message-ID: <CAAB-1yz86Q4u0+2T-QBM6SMwT32WDLUw1Jw-dN3H7X4L6e2ikQ@mail.gmail.com>
From: Adrian Alonso <aalonso00@gmail.com>
To: holger.behrens@windriver.com, Florin Ionut <florin.sarbu@windriver.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: [meta-ivi][meta-fsl-arm] Kernel AF_BUS dependency?
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
X-List-Received-Date: Wed, 23 Jan 2013 01:26:02 -0000
Content-Type: multipart/alternative; boundary=14dae9340f8dc03ebd04d3ea9367

--14dae9340f8dc03ebd04d3ea9367
Content-Type: text/plain; charset=ISO-8859-1

Hi Holger, Florin

I'm building excalibur-image from meta-ivi and I can't login to the system
See: http://pastebin.com/fRUJsaae

Two issues:

systemd-random-seed-load service, here probably I'm missing in my kernel
config to enable
random number support.

the second is about D-Bus

"Failed to listen on D-Bus System Message Bus Socket"

My question

Do I need AF BUS kernel patch ?

0001-net-bus-add-the-AF_BUS-socket-address-family.patch

The kernel that I'm using is kernel version 3.0.35.

Best regards.

-- 
Saludos
Adrian Alonso
http://aalonso.wordpress.com

--14dae9340f8dc03ebd04d3ea9367
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Holger, Florin<div><br></div><div>I&#39;m building excalibur-image from =
meta-ivi and I can&#39;t login to the system</div><div>See: <a href=3D"http=
://pastebin.com/fRUJsaae">http://pastebin.com/fRUJsaae</a></div><div><br></=
div>
<div>Two issues:</div><div><br></div><div>systemd-random-seed-load service,=
 here probably I&#39;m missing in my kernel config to enable</div><div>rand=
om number support.</div><div><br></div><div>the second is about D-Bus</div>
<div><br></div><div>&quot;Failed to listen on D-Bus System Message Bus Sock=
et&quot;</div><div><br></div><div>My question</div><div><br></div><div>Do I=
 need AF BUS kernel patch ?</div><div><br></div><div>0001-net-bus-add-the-A=
F_BUS-socket-address-family.patch</div>
<div><br></div><div>The kernel that I&#39;m using is kernel version 3.0.35.=
<br clear=3D"all"><div><br></div><div>Best regards.</div><div><br></div>-- =
<br>Saludos<br>Adrian Alonso<br><a href=3D"http://aalonso.wordpress.com">ht=
tp://aalonso.wordpress.com</a><br>

</div>

--14dae9340f8dc03ebd04d3ea9367--
