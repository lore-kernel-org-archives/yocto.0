Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09788E006D9
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 23:16:33 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so5320921pbb.35
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 23:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=o8giSWOju4ZHZnFafNiiaehZ27kl60PJ9SzgfHD/VIs=;
	b=EPdloRRtcDZp8iB7WjTffLjDuH6+Rl32IfZ67envB7NHsqDWx5pn9cTAtwgQFZdLD/
	a4hK9l9vw5+f34fmWyTIu8bjBAYBiCW3cNwtOZosfT7E2grzDExkA+HyYQqJvt6I38cr
	dps+/vIxCTE4ykZk5hQnW31fy35b3JoZgoMouVa62cdcKg43SrPXxYnxfYbTB8zQJbxe
	NK5FD/pJlSnJBvuNKtctalGOQkC8vu02WJ9iRkgjQ+1pH9u6LTKrJ/iCtU9oyNlr3nDT
	naaNGS3p1OTjUGIbRp/mUVc0SDXUzIbi2T4vH7BPhyCqHeWU1tztCl4Cnilxl0a1PbFi
	4rFw==
Received: by 10.68.191.106 with SMTP id gx10mr17768507pbc.37.1340432192709;
	Fri, 22 Jun 2012 23:16:32 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id gg10sm1419014pbc.51.2012.06.22.23.16.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 22 Jun 2012 23:16:32 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <2E8A3DA3-EC31-4CE7-979D-E842AFFAB8CA@gmail.com>
Date: Sat, 23 Jun 2012 10:16:27 +0400
Message-Id: <42D532F4-5629-4BE6-B8AD-3E28A192327D@gmail.com>
References: <2E8A3DA3-EC31-4CE7-979D-E842AFFAB8CA@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1278)
Subject: Re: SRCREV spec not working for kernel git recipes
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
X-List-Received-Date: Sat, 23 Jun 2012 06:16:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
        I found out that if I specify SRCREV_pn-${PN}, it works and =
picks up the correct commit id, as follows:

SRCREV_pn-${PN} =3D "a5556fb251253ccb674bd22d9703c37f6f8807a8"

However, if you simply specifying SRCREV =3D  =
"a5556fb251253ccb674bd22d9703c37f6f8807a8", it has no effect and it =
always picks up the latest commit from the git repository.

It would be great if someone could please explain why this is so, =
because I search through the Yocto documentation and it isn't mentioned =
anywhere. The OE classic way of doing things, it used to pick up the =
correct commit by just specifying SRCREV. Now I find that you have to =
specify SRCREV_pn-${PN} to get it to work.=20

Is this documented somewhere?

Best regards,

Elvis Dowson=

