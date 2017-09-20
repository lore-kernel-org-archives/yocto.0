Return-Path: <danwalkes@trellis-logic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBEF0E0090A; Wed, 20 Sep 2017 08:34:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFED3E00851
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 08:34:02 -0700 (PDT)
Received: by mail-wr0-f182.google.com with SMTP id m18so2493155wrm.2
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 08:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trellis-logic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=C4sb2f2TfxOyCjnC7h/+EwzwFOCDA92Xz5YdHMzsLWM=;
	b=nvePD3ZNCY3UPOeDQzHlLVMOh1cTEDB28s7pw58a/P+//S9vVj17kheg4pTJTDFyIG
	8qri82vPx0LGDdU6QCS/xB6YilvwGOP0jDkE8vveQ8ZVFgoZQfujNc35lXVxwXfo9c0Q
	GhFsFj39eLk2zWAS3i90WeWIVeWkAT1zD5Z5L69gEzXrCj+ZHsDDyfdlWbGJPY96b0A9
	NKJdfrIDqIcYlIhi5fl1Buu3F98Adyd5K/s6p3G/lh0/HwpssoVz6r+sjU0AFf7+BpBy
	3WvUxivq6hCG+HeadDIXpPgj3f4BultLoMHr8dyKJYsavIv7Es3z6KNTA+Unl20IAep1
	abrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=C4sb2f2TfxOyCjnC7h/+EwzwFOCDA92Xz5YdHMzsLWM=;
	b=fE6jW/ucd6VZdkGTJVJKVrlq0px2M3XM66bUdS4oQyzi0WPRyLy+0ncNE66yhDOXmi
	HJcvE1kJP7EGTdZ3MgcvZJm/8Fziweodm+eTpL8uKrO4X/JpiUuy8IWhnP4t+xg2Q25e
	fypRQXYmeANcjrbCCpULJfAp4V5id9ml/0XQ3mg6jTw/jP6g3WPs5eGA3obUEASJUTi3
	UAECMSpVQv9r59DgTEmMLXVfmz9bJNjoEDzg6gXH1QeE/SVpZeRF5qbPqdkdemX211HW
	+q78B3GtX4EP99zIZeTY4cNAdeoDBgliv7EXj+ZrLC6Y0YzFo3XIVYbwG+0hiE3j88k3
	isfA==
X-Gm-Message-State: AHPjjUjx2038jClowEMUsRW+7FINW0SoxzK4o4lO/IGNMo9JTNl1WfqC
	7zblkZ8zG9fOHvdegSxg9w1tHI0HOXy4KuMNi8o6beCVNCc=
X-Google-Smtp-Source: AOwi7QAH2m6jmJZrt0ivY9Zf5f5/Bi6W+smGHS5yRPvdSU8ajx75zSEdwgn8l+SqB9vKgGXfEC66JHC2SIq5vdUJIjQ=
X-Received: by 10.223.166.138 with SMTP id t10mr5241788wrc.64.1505921641346;
	Wed, 20 Sep 2017 08:34:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.102.69 with HTTP; Wed, 20 Sep 2017 08:34:00 -0700 (PDT)
In-Reply-To: <CAAhKrJ1YOsQu-F1DZS1v0VweZue=xJ6CR+ASiCAC4=3rUkYz-w@mail.gmail.com>
References: <CAAhKrJ0Vcq=udaGzcWi5s4cMyxEnNoyXWoeYW+wJhzWD_zxM8g@mail.gmail.com>
	<CAJTo0Laxp2ui6Sh8WdUVQxuGmEx+fuGaD_=yCHuFA30u--mZow@mail.gmail.com>
	<CAAhKrJ1YOsQu-F1DZS1v0VweZue=xJ6CR+ASiCAC4=3rUkYz-w@mail.gmail.com>
From: Dan Walkes <danwalkes@trellis-logic.com>
Date: Wed, 20 Sep 2017 09:34:00 -0600
Message-ID: <CAAhKrJ18402KZnFnxiAd975vQfEiX3Zq+MWDe2E_Eq2jcg3FsQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: pyro openembedded gpsd update-rc.d problems with read-only-rootfs
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
X-List-Received-Date: Wed, 20 Sep 2017 15:34:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 13, 2017 at 10:56 AM, Dan Walkes
<danwalkes@trellis-logic.com> wrote:
> On Mon, Sep 11, 2017 at 5:01 AM, Burton, Ross <ross.burton@intel.com> wro=
te:
>> On 10 September 2017 at 21:35, Dan Walkes <danwalkes@trellis-logic.com>
>> wrote:
>>>
>>> It looks like because the update-rc.d step fails this setup gets moved
>>> into a gpsd post install script, which won=E2=80=99t work because I=E2=
=80=99m
>>> configured to use a read only root filesystem.  So I need to find a
>>> way to keep the update-rc.d step from failing.
>>
>>
>> The recipe shouldn't invoke update-alternatives directly, but use the
>> update-alternatives class instead.
>>
>
> Thanks for the suggestion Ross.
>
> I didn't mention it before but I had already attempted to make this
> change after I initially noticed the problem.  See this commit:
> https://github.com/Trellis-Logic/meta-openembedded/commit/ddf008dbdae602d=
be722f1fcb231f5549e75a586
>
> I didn't see any difference when I updated to use update-alternatives
> instead of invoking directly.
>
> Since the error message was related to update-rc.d I've also attempted
> to use the multi-update form of update-rc.d in the above commit.  I
> thought that might be required when multiple packages were built from
> the same .bb file.  However, don't see a difference in the result with
> these changes either.

The fix was to specify INITSCRIPT_PACKAGES =3D "gpsd-conf", since the
gpsd-conf package was where the /etc/init.d/gpsd file is being
installed, per inspection of rpm files.  See the patch at
https://github.com/Trellis-Logic/meta-openembedded/commit/d91bab137dfc4f3ce=
6526bd8a6e95e5de7658fd5

I will submit this patch to the Openembedded-devel list unless anyone
has other/different recommended changes.

