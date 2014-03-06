Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f196.google.com (mail-vc0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D3F1E00973
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 08:05:30 -0800 (PST)
Received: by mail-vc0-f196.google.com with SMTP id lf12so1008714vcb.11
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 08:05:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=0WnBL47Ru9RwoxxLqynoJ/qrwuRDxwsW6jCIBvWUVUo=;
	b=KvLOCgibj2EIDT4fwCyV1YhXvTLPzGvigBhaIMZgmrfPTo6WT+OBQex29gF455tKug
	1jTxtB65d2J9zA3d4EsJjIel3hlbckjg752b5VFJJGhNWG80adXVbnrS1NgePHpCRW6F
	38suB3yWA+Wb9k2AB9Ymv8gzPY9YNWHaC+tuyjbziWnSujtJ3DdYuJbOQQdw7TxGXEx1
	X4NIhFkoK4CEn3NbK5lKZwUWuI21h/qCRVrmP17HxBNVYqn/7c7f0hPIx6jQREQnf1af
	JBW/BUSq3TDhR2u32736bUbo6HORXbrk58jKcizKZzw0LD14TQQiTAzBvnWNngdnhT6x
	K/cw==
MIME-Version: 1.0
X-Received: by 10.220.11.141 with SMTP id t13mr1470536vct.30.1394121930054;
	Thu, 06 Mar 2014 08:05:30 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Thu, 6 Mar 2014 08:05:30 -0800 (PST)
Date: Thu, 6 Mar 2014 09:05:30 -0700
Message-ID: <CAA7h+EqQ0Jv1rz75E0owrG0k-b0w5fmgOuTzZhZz2-OSW8p6Rg@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: hwdata needed for usbip
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Mar 2014 16:05:31 -0000
Content-Type: multipart/alternative; boundary=001a11c3c9706a1eb704f3f24ec2

--001a11c3c9706a1eb704f3f24ec2
Content-Type: text/plain; charset=ISO-8859-1

I have looked high and low for the hwdata package, usbip needs it to
function. I don't see it with a bitbake -s | grep hwdata and it is not in
smart repos.

Is this package include in another package? If, so which one?

--001a11c3c9706a1eb704f3f24ec2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have looked high and low for the hwdata package, usbip n=
eeds it to function. I don&#39;t see it with a bitbake -s | grep hwdata and=
 it is not in smart repos.<div><br></div><div style>Is this package include=
 in another package? If, so which one?</div>
</div>

--001a11c3c9706a1eb704f3f24ec2--
