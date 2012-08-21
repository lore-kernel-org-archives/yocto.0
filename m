Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07C6BE00346
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 11:09:27 -0700 (PDT)
Received: by eabd1 with SMTP id d1so37492eab.35
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 11:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=feNxxVao9Nh3Sq9iGAeFFi5itd8tWk46XV/jL2QN9FQ=;
	b=JrpCOAc7FcYVIq24oLEGFLtEtOxZNvLrWizaQqYzQXYEMBDU/x2rMAKANCNt6390Pq
	QXKRmnq1G5sDyMpeiINSRnCsCoTA1a2FHpKYluKnGYRIiplkIzQ8IjJL4VMBEutpD6oA
	SXJkGMliViA9YIeMCO4D7NE6IZVFpC4TyfEIkAbLM+VFmpSZax9waL2gqCcKYZVEQNc3
	uHf7hRFB7Go5gRz11UGdY6slWRazMnivnBxkE9gRp/R1zP+7ewH53BSg4hqM/PxtydZs
	XibOLrNLrIaW3KvmqcU5+B9miEVcGiqZfA5KVwxxff1C6NZ9uwbMCOs09oN0lEahFxrA
	aCpg==
Received: by 10.14.204.72 with SMTP id g48mr14681610eeo.45.1345572567196; Tue,
	21 Aug 2012 11:09:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Tue, 21 Aug 2012 11:08:57 -0700 (PDT)
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49003313905@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003313905@ORSMSX103.amr.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Aug 2012 11:08:57 -0700
Message-ID: <CAMKF1soePqtwZyQTJLOi2wxi9ODf1W-JP_cKf6Kvi6wJ4GtFtg@mail.gmail.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ERROR: QA Issue: No GNU_HASH in the elf binary
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
X-List-Received-Date: Tue, 21 Aug 2012 18:09:28 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 21, 2012 at 11:03 AM, Saxena, Rahul <rahul.saxena@intel.com> wrote:
> cdv-pvr-driver-dev/usr/lib/libOpenVGU.so

this seems to be a proper file and not a symlink so firstly you have
.so in -dev packages
if you fix that it will work secondly if you intentionally want those
.so in -dev package
then add

INSANE_SKIP_${PN}-dev = "ldflags"

as well.

