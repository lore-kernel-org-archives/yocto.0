Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65FB9E010AE; Thu,  8 Oct 2015 07:52:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF587E00B4C
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2015 07:52:33 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so29166440wic.1
	for <yocto@yoctoproject.org>; Thu, 08 Oct 2015 07:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=/toWEC/VVxpzLxmAf1EJa5S0KL5i4ECkmV6gosLkjL8=;
	b=09zG149cBZ4MG5M++lgikFxKYMJtRaYZb2J/Bec6W84Y9NhVhQa0Y++OJMJZwhOZ9P
	YpCqnncXEO6m+8s+/vwhPIo8kbhKUEtoknka4fTCG6vGiNpkJURyoPc477tASWOb21b0
	5V9UJVmFP7BvbNbhVsYQNMW9/iGwkoX5trmE0Zkd+mXpZ6r9hMv5w5WLbKnapeudIhE/
	FBzmUo/4Xa79RcNR2JhiWVJnU8JtrwACq5+IfdUPuBZkQwYn9LLqopPIi1ua6Q+nU1Sh
	7WVOVBOltLmE3DVG9Hd8VVYfiCMMMqjyu5Y7HWwSHc8OIdwOnkeVdi6OQTgtIhN7n3RE
	N9Zg==
X-Received: by 10.180.87.138 with SMTP id ay10mr3646733wib.12.1444315952445;
	Thu, 08 Oct 2015 07:52:32 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by smtp.gmail.com with ESMTPSA id
	uq5sm46644821wjc.3.2015.10.08.07.52.31
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 08 Oct 2015 07:52:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <69B07C73-5285-4201-BFEC-0C77E1883E61@gmail.com>
Date: Thu, 8 Oct 2015 16:52:30 +0200
Message-Id: <E36BFEC6-6F32-4F29-A200-4CE84A535043@gmail.com>
References: <1739F874-791D-4371-B60A-B234370430A4@gmail.com>
	<69B07C73-5285-4201-BFEC-0C77E1883E61@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 5/7][meta-openembedded] Update nginx to 1.9.5
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
X-List-Received-Date: Thu, 08 Oct 2015 14:52:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> Am 02.10.2015 um 03:25 schrieb Khem Raj <raj.khem@gmail.com>:
>=20
> Jens
>=20
>=20
>> On Oct 1, 2015, at 11:18 AM, Jens Rehsack <rehsack@gmail.com> wrote:
>>=20
>>=20
>> many bux-fixes, optmizations and features added:
>>=20
>> Changes with nginx 1.9.5                                         22 =
Sep 2015
>>=20
>> [...]
>>   *) Security: a stack-based buffer overflow might occur in a worker
>>      process while handling a specially crafted request, potentially
>>      resulting in arbitrary code execution (CVE-2013-2028); the bug =
had
>>      appeared in 1.3.9.
>>      Thanks to Greg MacManus, iSIGHT Partners Labs.
>>=20
>=20
>=20
> This is good info. Although a link to diff in cgit or web view of =
whatever SCM nginx uses would have done too.

That's simply the Changelog. It's an update, not a fix for a critical =
issue.
Do you really ask me to list each fixed bug from nginx' ticket list?

>> Signed-off-by: Jens Rehsack <sno@netbsd.org>
>> [...]
>> --- a/meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb
>> +++ /dev/null
>=20
>=20
> please user git format-patch -M to let git work harder on detecting =
renames, its way easier to review the changes that way
> this patch belongs to openembedded-devel list so please resend it =
there with prefixing the layer in meta-openembedded repo =
[meta-webserver] where the patch is applied.

Sure, will do when I have feedback regarding above question.

Regarding the other 6 patches - is just the right layer and "-M" =
missing?
Do I have to improve them anyhow (beside what Martin Jansa and Khem =
criticized: missing description here and there)?

>> [...]

Cheers
--=20
Jens Rehsack - rehsack@gmail.com


