Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 344FFE008D7; Sun,  9 Nov 2014 14:02:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8EB2E007C2
	for <yocto@yoctoproject.org>; Sun,  9 Nov 2014 14:02:38 -0800 (PST)
Received: by mail-qg0-f52.google.com with SMTP id a108so4766485qge.11
	for <yocto@yoctoproject.org>; Sun, 09 Nov 2014 14:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=+VVZKVGXMEj5W/D/QJtRqUPEu1/P8yyGmR+oz7vEFdE=;
	b=FtqsTA0oUIMa2Cnk5lBthPpioNufQypooM0MDKyuKEQG5ecKl0Xr4TsmU0kPHpa3zh
	3y4FblhbddTH0Q3y51Bs04kLZnGSroPQP13PFELVz7q63zyICun6fmBHAp3/V6zrfZli
	XJUz9aAkihpgAccejUzRBGYaC58sSRA/zQdSe02/HaThZ5VeIjK/o43+G+4CW/m6qXnx
	GuFcpUVM029nOvJ68gdWc8HF3Jyp+GiqimDLIStCTKkUUeT8XbuahWUooJov2bo7P2gd
	raPlweO+UgEVQxe2TlTYshVDc5cPzfNTc6Tme6JBoxcgrdHTTvdbw7+V951OJz4//YmS
	jIyQ==
X-Received: by 10.140.23.198 with SMTP id 64mr36743359qgp.62.1415570557468;
	Sun, 09 Nov 2014 14:02:37 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.140.143.146 with HTTP; Sun, 9 Nov 2014 14:01:57 -0800 (PST)
In-Reply-To: <545FD907.2070003@mindchasers.com>
References: <545FD907.2070003@mindchasers.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Sun, 9 Nov 2014 22:01:57 +0000
X-Google-Sender-Auth: Oc8B6dazLZ0NpCLCZ4kpSf9K4Lo
Message-ID: <CANyK_8eis-ysC=Std=3D2m_0HhSnSDSJyPL_z1+LpBi1GdZ5mQ@mail.gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: newbb.vim vs skeleton recipe in yocto-docs dev manual....
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
X-List-Received-Date: Sun, 09 Nov 2014 22:02:41 -0000
Content-Type: text/plain; charset=UTF-8

On 9 November 2014 21:13, Bob Cochran <yocto@mindchasers.com> wrote:
> Hi,
>
> I just noticed that newbb.vim in bitbake/contrib is notably different from
> the skeleton recipe proposed in the latest Dev Manual.
>
> I'll submit a patch if someone can give me some guidance on what should be
> in newbb.vim (or maybe it's the manual that needs to be patched).
>
> Bob
>
>
> From yocto-docs: Dev Manual (modify the following skeleton recipe):
>
> SUMMARY = ""
> HOMEPAGE = ""
> LICENSE = ""
> LIC_FILES_CHKSUM = ""
> SRC_URI = ""
> SRC_URI[md5sum] = ""
> SRC_URI[sha256sum] = ""
> S = "${WORKDIR}/${PN}-${PV}"
>

This list looks a lot more comprehensive than the other. DESCRIPTION
is set to SUMMARY if otherwise left blank. SECTION isn't terribly
important, I never set it in recipes in my layers. DEPENDS is
important though and probably belongs in the list. Lastly, S has a
sensible default value which you don't usually need to override.

So I'd suggest using the above list, plus DEPENDS, subtract S.

Cheers,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

