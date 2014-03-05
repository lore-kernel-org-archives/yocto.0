Return-Path: <joelparker27@yahoo.com>
Received: from nm4-vm0.bullet.mail.bf1.yahoo.com
	(nm4-vm0.bullet.mail.bf1.yahoo.com [98.139.213.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E673EE00A4C
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 06:09:21 -0800 (PST)
Received: from [98.139.215.143] by nm4.bullet.mail.bf1.yahoo.com with NNFMP;
	05 Mar 2014 14:09:20 -0000
Received: from [98.139.212.193] by tm14.bullet.mail.bf1.yahoo.com with NNFMP;
	05 Mar 2014 14:09:20 -0000
Received: from [127.0.0.1] by omp1002.mail.bf1.yahoo.com with NNFMP;
	05 Mar 2014 14:09:20 -0000
X-Yahoo-Newman-Property: ymail-5
X-Yahoo-Newman-Id: 276401.78001.bm@omp1002.mail.bf1.yahoo.com
Received: (qmail 18721 invoked by uid 60001); 5 Mar 2014 14:09:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1394028560; bh=BKEi6weFudR7ftAqJdLq1rV66kAwtSvsuPG4xXgv+cI=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=tNN4Kwm0L7tl8dJzWlrB85F8nrnk4Q/DrwOMHzM+ri0nRZEMEjWdsrgmL0XmDWUdaluljqKFcclLmwJbBieRha8MU1RY7EDBTPJZBANj6/droA6o7Jb944x85me7AX1UioTudbwqQPHmeAVc94gcw0WQxPtah0U/d9b7NmG7A9Y=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=TOB4oFCkIpkuFABuCjhBAnwS4BOVSntw1DJX7151PXb7WeXqPDBgK74pyUOd1sl2cooQZ3NTX6cEDFfnCosb8atCjAd6uwtHjtKMxy45AalSOIxYaIO2NkcTxJZDUEm/1+U/9f3ZuAu57fC12u3HIY6Ep9TI94MZtj/33+e1y4E=;
X-YMail-OSG: S7Q8Yv0VM1mT.uDCnjRl7gls3MvrCAwrV56cL1pXVszlrxL
	KFBDsXDcet2xHZFT8IXBvQw302u8TL2fj0Yc12wJP9HrDKjZ8Wv8enXH3jZs
	yZ_qzN3GfbCltKAHpgNz7Is72KIPtUMSYPf9z4IU8zex70b85RNtVAL5ih6E
	rSXhNaIfEKKDrjeXAc8SdEh7AJaTyzsUwQ5AHukTNScZftCcHydajcZ9OSvW
	59jQfnwc8wQWwwhgiYKr7Ev.p5DVKS0rCO8DsKfDrjQPI_EFllOtKDh2dk0r
	ci.EAUTCYgEdW8zNkUaNZNa42ptRUaoQGN3Joe10uKcxF1uHkoH4KuTiyC6I
	qjJb9ISOozRl9fKaAXxxxaGuP83yNvk0e7m7FXt4WZfTJK_.0dUNCqMBomSq
	zt7.hvWo6jrkkZfTc5bUinJBpyzJHgUwDHeDQnJKptSiKgePYaHD.ols4om3
	0W6PIh6XF4yYGNxPB2XnPMbfbgXrFm9eZQHErrCIexjRLaI2gAShmF8uHKhj
	TiKMqRty72MG8KrGuhbJIIOfHQIEsNiRHGuDU.hW9bVcsSsh_K.2eEn57mJk
	TjTB9OoB2iCuwy.etpvh7iTUA8GIpkDQObKr9.HTXtLPXVYa.6oYgthz3_eS
	840R1ke4QYqE3wA--
Received: from [71.40.238.150] by web163103.mail.bf1.yahoo.com via HTTP;
	Wed, 05 Mar 2014 06:09:20 PST
X-Rocket-MIMEInfo: 002.001,
	SSBiaXRiYWtlIGEgcmVjaXBlIHRoYXQgaGFzIHNxbGl0ZTMgaW4gaXQsIGJpdGJha2UgcHVsbHMgaXQgZG93biBhbmQgZXZlcnl0aGluZyBpcyBidWlsdCBjb3JyZWN0bHkuIApUaGVuIEkgcnVuIHRoZSBmb2xsb3dpbmcgY29tbWFuZHM6CgokIGJpdGJha2UgbWV0YS10b29sY2hhaW4KJCBzaCBwb2t5LWVnbGliYy14ODZfNjQtbWV0YS10b29sY2hhaW4tY29ydGV4YTloZi12ZnAtbmVvbi10b29sY2hhaW4tMS41K3NuYXBzaG90LnNoCgpldmVyeXRoaW5nIGZpbmlzaGVzIHdpdGhvdXQgZXJyb3JzIGJ1dCB3aGUBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.177.636
References: 
Message-ID: <1394028560.17657.YahooMailNeo@web163103.mail.bf1.yahoo.com>
Date: Wed, 5 Mar 2014 06:09:20 -0800 (PST)
From: Joel Parker <joelparker27@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: Adding headers to tool chain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Joel Parker <joelparker27@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Mar 2014 14:09:24 -0000
Content-Type: multipart/alternative;
	boundary="673831718-2102186733-1394028560=:17657"

--673831718-2102186733-1394028560=:17657
Content-Type: text/plain; charset=us-ascii

I bitbake a recipe that has sqlite3 in it, bitbake pulls it down and everything is built correctly. 
Then I run the following commands:

$ bitbake meta-toolchain
$ sh poky-eglibc-x86_64-meta-toolchain-cortexa9hf-vfp-neon-toolchain-1.5+snapshot.sh

everything finishes without errors but when I look for sqlite3.h in /opt/poky/1.5.1/sysroots the header doesn't exist but if I go to my root bsp directory and do a find it is in many directories. How do I get this header file into my tool chain ?

-- Joel

--673831718-2102186733-1394028560=:17657
Content-Type: text/html; charset=us-ascii

<html><body><div style="color:#000; background-color:#fff; font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt"><div id="yiv9965990235"><div><div class="" style="color:#000;background-color:#fff;font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12pt;"><div id="yiv9965990235yui_3_13_0_ym1_1_1394026239352_5393">I bitbake a recipe that has sqlite3 in it, bitbake pulls it down and everything is built correctly. <br>Then I run the following commands:<br><br>$ bitbake meta-toolchain<br>$ sh poky-eglibc-x86_64-meta-toolchain-cortexa9hf-vfp-neon-toolchain-1.5+snapshot.sh<br><br>everything finishes without errors but when I look for sqlite3.h in /opt/poky/1.5.1/sysroots the header doesn't exist but if I go to my root bsp directory and do a find it is in many directories. How do I get this header file into my tool chain ?<br><br>--
 Joel<br></div></div></div></div></div></body></html>

--673831718-2102186733-1394028560=:17657--
