Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1799E006DB; Sun, 13 Jul 2014 01:23:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 937A8E006BC
	for <yocto@yoctoproject.org>; Sun, 13 Jul 2014 01:23:05 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id m15so2818975wgh.5
	for <yocto@yoctoproject.org>; Sun, 13 Jul 2014 01:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=MvOvsvMoj/JxVliw97bYBXXL3LjYtQ6pgzvanbQUscY=;
	b=ZK4Bbg+0g9hrtTDcZSfDtpE4nY8hK+HjGi2W7GAFQ9wMaql6uLVx6+Y8OJYE51lBL7
	o76XdvXD7sJ7/QB3m27jGrrU+HeW9shzWbcKXl0YpNAqlhQFAmnROcVjKu0XzIeRrix3
	TFeKpLg6oPXhxuXv3eVgvs27/b7UkXCJmvRWunWg4uiW/NXxHWkYCJEdsoUnzY/IUBbJ
	O1PgvM8u7r5DGrena5b3XOX1AeOUk0OpnfdgahQ/QeOxJFcbalbzmvbR/yeqCoitrlfO
	3ZFp6kCQH7bVFCvKMLFh8R38BSM0YJxFRdKgvUyQowS8ptcYWjbLwBa6tcLfr9+q4hi9
	OJAw==
X-Received: by 10.194.9.198 with SMTP id c6mr201475wjb.131.1405239784765;
	Sun, 13 Jul 2014 01:23:04 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by mx.google.com with ESMTPSA id
	v17sm17049731wjr.33.2014.07.13.01.23.03 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 13 Jul 2014 01:23:04 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <67B6E4F7-8BF1-4E93-B6D5-94A2D6B8EB91@gmail.com>
Date: Sun, 13 Jul 2014 10:22:59 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Subject: Get version information of receipes
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
X-List-Received-Date: Sun, 13 Jul 2014 08:23:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

as the author of https://github.com/rehsack/Packager-Utils I think about =
adding support to generate recipes which would allow me add+update =
primarily perl modules (more later, baby steps ^^).

Is there an easy way to get dedicated information about a recipe by =
asking bitbake about it? Original dev-environment is pkgsrc where a
$ make showvars VARNAME=3D"$(LIST_OF_VARS)" shows all the vars in list =
of request (eg. PKG_VERSION, DISTFILES, MASTER_SITES, ...).

Relevant would be anything which is needed to identify the used upstream =
object - for many recipes to many indirections and *.inc files would be =
needed to be parsed (re-implementation of bitbake).

Cheers
--=20
Jens Rehsack
rehsack@gmail.com






