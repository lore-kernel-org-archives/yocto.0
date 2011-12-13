Return-Path: <davidsmoot@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9E7DE00305
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 15:05:27 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yhpp56 with SMTP id p56so987560yhp.35
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 15:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=xZHSoK4jp5xgdza5ePyUBk5Ca2/WJQsKF6bAdILT4ZQ=;
	b=iORFn2nJSEkVhQu5vibm+M4HX33qtRzWyVybzUPlgDIGCKupVgOH7enmGAt2eL8923
	aJ2gGWg8CE9qdxKG4j/u/M04TbSS5LVLZWAVoYpiJw52/3M+vAH5UmG9rN24sxyOa+2B
	6GL8OJ6G/r78qNauynRWKAd5wnXR1aTgUeKjU=
Received: by 10.236.181.225 with SMTP id l61mr7087078yhm.131.1323817527022;
	Tue, 13 Dec 2011 15:05:27 -0800 (PST)
Received: from [192.168.1.97] (70-139-182-143.lightspeed.hstntx.sbcglobal.net.
	[70.139.182.143])
	by mx.google.com with ESMTPS id y17sm1491372anc.2.2011.12.13.15.05.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 13 Dec 2011 15:05:26 -0800 (PST)
From: David Smoot <davidsmoot@gmail.com>
Date: Tue, 13 Dec 2011 17:05:24 -0600
Message-Id: <021F09F7-E9C9-4088-A8CB-881FAF0FBF85@gmail.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1084)
X-Mailer: Apple Mail (2.1084)
Subject: Error in routerstation pro machine.conf?
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
X-List-Received-Date: Tue, 13 Dec 2011 23:05:28 -0000
Content-Type: multipart/alternative; boundary=Apple-Mail-4--234542523

--Apple-Mail-4--234542523
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I'm still very new and very clueless but I humbly submit what looks like =
a bug to me..

"routerstationpro.conf" in meta-yocto/conf/machine/ lists machine =
features the hardware does not have.

http://www.ubnt.com/wiki/RouterStation_Pro lists the hardware specs and =
it lacks a display adapter (hence no screen nor keyboard) and it also =
lacks USB slave hardware (hence no point in usbgadget).

File a bugzilla report or is there a reason for that configuration?


David

David Smoot
davidsmoot@gmail.com




--Apple-Mail-4--234542523
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">I'm still very new and very clueless but I humbly submit what looks like a bug to me..<div><br><div>"routerstationpro.conf" in meta-yocto/conf/machine/ lists machine features the hardware does not have.</div><div><br></div><div><a href="http://www.ubnt.com/wiki/RouterStation_Pro">http://www.ubnt.com/wiki/RouterStation_Pro</a>&nbsp;lists the hardware specs and it lacks a display adapter (hence no screen nor keyboard) and it also lacks USB slave hardware (hence no point in usbgadget).</div><div><br></div><div>File a bugzilla report or is there a reason for that configuration?</div><div><br></div><div><br></div><div>David</div><div><br></div><div><div>
<div style="font-size: 12px; ">David Smoot</div><div style="font-size: 12px; "><a href="mailto:davidsmoot@gmail.com">davidsmoot@gmail.com</a></div><div style="font-size: 12px; "><br></div><br class="Apple-interchange-newline">
</div>
<br></div></div></body></html>

--Apple-Mail-4--234542523--
