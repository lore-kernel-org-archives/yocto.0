Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13CA3E00853; Fri, 20 Feb 2015 06:31:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (challinan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C50DE00837
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 06:31:46 -0800 (PST)
Received: by mail-oi0-f52.google.com with SMTP id u20so2789219oif.11
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 06:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=rodyB3QI/kPAC8ZGK88x4MNXmRpNQBFzz+DSP7p2RIM=;
	b=vWRcWUTixiy4zO9hhfR35yVuK3TzqHHR/AwehD04jJLpuV19S94InnIQZ33nqSH1Pw
	GbGJlLztZLUEkAc1eDUHUtYckmeGNxUwXRsvH2Lp0eS7496yOUxjRLCA9xF/EcRdOf9/
	UkhNOG3pIKWxcDnIxrCs94nHLy+SHC2hn5F/1fk2kB4FxCweQb2ux4tg689VBUKvs326
	AMs3Clei8odlrlT+pZBNxwi3JTYpBeFw25kD4xWI8UpLCrLIV10GWgJzn4ZlZU57CFm1
	w6/aw/dZyqYP40hyAYnw4js8zlCCOoCgZeJUuGIATrkSqm5FBO3ktlU6oCMOOUSByRqo
	EdGg==
MIME-Version: 1.0
X-Received: by 10.202.93.134 with SMTP id r128mr6349894oib.95.1424442705583;
	Fri, 20 Feb 2015 06:31:45 -0800 (PST)
Received: by 10.202.49.129 with HTTP; Fri, 20 Feb 2015 06:31:45 -0800 (PST)
In-Reply-To: <CAAKMwipcazbOT9_u=Y88fbw5UHEBaCDTPMJb56Jvi0anem1RcQ@mail.gmail.com>
References: <CAAKMwipcazbOT9_u=Y88fbw5UHEBaCDTPMJb56Jvi0anem1RcQ@mail.gmail.com>
Date: Fri, 20 Feb 2015 09:31:45 -0500
Message-ID: <CAME0jBTQ1ERsSrS+W1EVu5-8ZuHkYRX8wnezuAFSr_GJ_t-fEw@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: kaiu@gmx.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Edit project specific config files of other recipe like /etc/ssh/ssh_config from openssh
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
X-List-Received-Date: Fri, 20 Feb 2015 14:31:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Kai,

In your layer, create a .bbappend matching the basename of the package
you want to change. Using your example, create
recipes-connectivity/openssh/openssh_6.6p1.bbappend (make sure
versions match).

Then you can either replace or patch ssh_config. I would patch it.
Create your patch, put it in recipes-connectivity/openssh/files, and
name your patch file, ending in .patch in SRC_URI in your .bbappend
file.

Your .bbappend file might look something like this:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://myssh_config.patch"

The first line instructs bitbake where to search for your patch file.
The second line will cause the file to be fetched into your ${WORKDIR}
for openssh, and because it has a .patch extension, it will
automatically be applied.

The excellent Yocto Project Developer Manual has an example of a
.bbappend file, although its slightly outdated.  You no longer need PR
field, and SRC_URI should be += instead of "=".

http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#using-bbappend-files

Yocto Project is gifted with some of the best documentation in the
open source world.

Good luck!

On Fri, Feb 20, 2015 at 7:18 AM, Kai Ulrich <kaiu@gmx.de> wrote:
> Hi,
>
> I create a layer for my project.
> How can I edit (patch?)  project specific config files of other recipe for
> the rootfs without touching the original recipe.
> Project specific config files could by /etc/ssh/ssh_config (do not touch
> recipe openssh )
>
> Friendly regrades
> Kai Ulrich
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Life is like Linux - it never stands still.

