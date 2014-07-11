Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81984E003C1; Fri, 11 Jul 2014 13:00:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D52B3E0030A
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 13:00:44 -0700 (PDT)
Received: by mail-vc0-f182.google.com with SMTP id hq11so3098657vcb.27
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 13:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=TYa5/0trbIuPMxto78APeM3SO+MIfULepYcgCp+wjpM=;
	b=aJX9r5rlTo14SrHeIfUpXLxR4OjhU36/WQb9f7ILvx0zKYL38KY9peoVOpXWm0GRzz
	EWTzP7/0+gve2wankrVhiNqxmotd/vXjUx0GEFefLWl5stEPrsg5WE3YR8IKsOk927L7
	YRz2BOJkEbi0aQciRrEz4EQgfFoQCgyRF3kLtG0RMVRsDP2BSb30u+IPxusXwWDSw47b
	+zNRpFJMcaMi7iHQRvxhteMmC2IdbDMhf5i6VPblumXxzq5OS2D331hz5azAUKuI+M0H
	VwyZRJuCZfa0TyuzXY4BlLNRX3lbySmMQHFpDMe55K0IuedPzHMB0KdVYaQGL+h1Gdk3
	5YXQ==
X-Received: by 10.52.37.81 with SMTP id w17mr76961vdj.95.1405108843704; Fri,
	11 Jul 2014 13:00:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.105.233 with HTTP; Fri, 11 Jul 2014 13:00:13 -0700 (PDT)
In-Reply-To: <CAJTo0LZHs4jN7=9N+25pRm8uRR80snV4oH_mVegbx1gOmzPcYw@mail.gmail.com>
References: <CAF_dkJC121L=5shvVvOebHJRodDRRrRqNxo1dBvbgCVP2bLrCQ@mail.gmail.com>
	<CAF_dkJDiZopad1JGwpk-JJPoQFtOpB1PenH2MWAcSj5nqCP0Ng@mail.gmail.com>
	<CAJTo0LZHs4jN7=9N+25pRm8uRR80snV4oH_mVegbx1gOmzPcYw@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Fri, 11 Jul 2014 16:00:13 -0400
Message-ID: <CAF_dkJAVSmzPw0LhrTynQCTUnmQJhVV7PB7s8GDVzBvSh=8uuA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is it possible to prevent a package from updating the shared state cache?
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
X-List-Received-Date: Fri, 11 Jul 2014 20:00:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 11, 2014 at 3:19 PM, Burton, Ross <ross.burton@intel.com> wrote=
:
> On 11 July 2014 17:00, Patrick Doyle <wpdster@gmail.com> wrote:
>> (I
>> wanted to build from a different bzr repository and didn't want to
>> "contaminate" my sstate cache, or even worse, confuse it with a
>> different version of revsion 1234 from the other repository)
>
> Ouch, I'd forgotten that bzr revisions were not unique.  Is there a
> way of making revisions globally unique, and should we switch the
> packages to use those instead of local revisions?

Ahhh=E2=80=A6 Bazaar does use globally unique identifiers internally
(according to http://doc.bazaar.canonical.com/developers/overview.html).
I didn't think about that when I asked my question.  I just assumed
that the sstate cache was based on revno rather than guid.

I would expect that the guid should be available via bzrlib, if you
use that for the sstate cache.  It is also available (I have now
learned) via "bzr version-info" for a given branch.

--wpd

