Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83717E00950; Thu,  3 Jan 2019 02:35:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 171D4E00901
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 02:35:52 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id u18so27299196oie.10
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 02:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=2AcU5P1BznLTrM2efwYbCTmLptAcw5MVSDe3fkdEDJk=;
	b=FJ+hoWl9WZE/+078uwvUP5+XXXTsB1AepqvAkAIeQNwbDyt55TjpuC9cS753HpQeIS
	ByWp8Olqr+ucprKUH6tUgqlvhx/8f7AnRsfZ9f0I4y3LpKVJivAsHOnOvpSxDuz1iToM
	pY1Lxhm472+2jyGKYjIpBVVaVxGOduxaL2G8dW8aD7EIaeKWqc45FlzXUTDVwN95kL9X
	coxtzuooibMY5HmHENXLHZUmzxPbSAAv1yJgteYgaAozhON0Z43FWL8O4rAPuqLDN/N1
	vFOmTeDCWIPq1z81SgMvewxZKXU8ATPNBzVmlAG+XAGiCjjh1cDMD6r3vQpjplO2Ewt9
	B3HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=2AcU5P1BznLTrM2efwYbCTmLptAcw5MVSDe3fkdEDJk=;
	b=sDriCNsA+MGqpJB9ALMohKtdvl9g3Od4xrSU56VtF0iotZ6DLFxWzFb2vQAbLFCOsI
	dgZvwrWw/PsAr5/0JU9DINMe8cmR9nIJ/vDceDILtsoNvDHni48zmQVDo2ASLDqn1/fL
	c1yREqklAGIF9yGbUWA0vmTrdaCXV+o6RTTVl5CpyNUbu5X/h8oddxY6gOkTX1xMvhWc
	pZPHE0NDFXhkwjIQpsl1WCxBHn7dXgCYtKPP/JC6gqSmBZZ7GHtrVSGFQCmrukG2gmcq
	PyUwLEJgfr5tZzhuHQ/ln2WbBSsk/X+zmo4u4b8/UcrfizKP74WYQ5tgkvVX9i3++Iib
	3H4Q==
X-Gm-Message-State: AA+aEWb0XrDWMbdNAFrpWhRZgq9vVQhYSqjglJLaMW/ERUkgXBIXpr2A
	4FtGTf1v/Mo4K1Ah/vqNrQv1ZRDLd0xtcM/pXR4=
X-Google-Smtp-Source: ALg8bN6zMyKPLQlA34vzyjeONtKs0OMhO4yOxjvSI8Kh1zPYGIqEAXrr14c9SiFnIp90a2YT0qiWql0wYwGX5LPXVvA=
X-Received: by 2002:aca:544:: with SMTP id 65mr30364064oif.302.1546511752403; 
	Thu, 03 Jan 2019 02:35:52 -0800 (PST)
MIME-Version: 1.0
References: <CADmsHKdd=SePN5Gd5Sb0zRc-dA62RO4tOp4A9E5uvYvDVDN-Xg@mail.gmail.com>
In-Reply-To: <CADmsHKdd=SePN5Gd5Sb0zRc-dA62RO4tOp4A9E5uvYvDVDN-Xg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 3 Jan 2019 11:35:41 +0100
Message-ID: <CANNYZj9Lk=nGg+xprdGcAJ+Q7jsSbt=ZjSeBNT0a62DFZYRH_w@mail.gmail.com>
To: Derek Dresser <dresserd@alum.mit.edu>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Python upgrade path?
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
X-List-Received-Date: Thu, 03 Jan 2019 10:35:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 3 Jan 2019 at 10:11, Derek Dresser <dresserd@alum.mit.edu> wrote:
> I have an application that uses features introduced in Python 3.6, so I a=
m trying to add a new version of Python to my Yocto build.  I know that 3.5=
.6 is the latest version of Python that has been included in a Yocto releas=
e.  I found the patches here
> https://patchwork.openembedded.org/series/14778/
> and was able to build Python3.7.1 for the commit specified in the patch. =
 I looked briefly at rebasing the patches on the Thud branch, but I think t=
hat is beyond my current Python and Yocto capabilities.
>
> Are there any paths forward for me to get a newer version of Python using=
 Yocto?  Would it be possible for me to use a package created from that pat=
ched build and integrate it with my current thud build?  Are there any othe=
r workarounds I could use until a newer version of Python is supported?
>
> I'd be happy to spend some time on this if I could help move this forward=
, but I don't think this is something I can do by myself at this point.  I'=
m quite new to Yocto.

Sadly there is no good answer. There are patches, but they need
further work (see oe-core list for details). Worse yet, thud is likely
to stay with 3.5, as such drastic version upgrades are usually not
done in stable branches (you are still free to do it via a custom
layer with backported recipes though).

If you can take solving the issues and getting py 3.7 merged into
master as an exercise, this would be greatly appreciated by everyone,
and would take you out of 'new to yocto' :)


Alex

