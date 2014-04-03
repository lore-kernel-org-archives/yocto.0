Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ADB0E00C68
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 23:01:23 -0700 (PDT)
Received: by mail-qc0-f177.google.com with SMTP id w7so1338756qcr.8
	for <yocto@yoctoproject.org>; Wed, 02 Apr 2014 23:01:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=7by2rF0WzGbuPRN+tWZCyf7jJHvIFftXHIStoZE4u4Q=;
	b=knB+0WXmGMLNwUhzln/cUe8Tub+m2gWmijZLBfV+EV8TwvSVq05shnlPRp9ywQK8Co
	M6g9sR0qaKuYQ5R4ZW9C3VRmdt59zNV9q6+/mzEDOM/fq2fLl3CodSTBPpAyJYwxSe+b
	NjCVacHl3FynPucDe6A6sLDzAmLGQ4JntTcsS9vA2WsXo00mESEH+985aqgL6tC73aqu
	WEhCh7Jo3h/QSGkc5xoTV9wzWyERNXE3KVbcu9RRIwTy55pKhIamUXF+/hq+qcdrw6yk
	FHM6akEThGz4Nu/kRzkak/xWz9YAQx2RnzZjLb2Rt/cnOv+ZNU2g8zGFEfRlehGvXinX
	gotg==
X-Gm-Message-State: ALoCoQlHYh4SiJU1vVapG5EgqKOl0zOdyjPaoEuv0/l7aNFRAO9hCe2iBR6J+yRCUSOzpnaDb1cS
X-Received: by 10.140.20.167 with SMTP id 36mr5077207qgj.54.1396504882881;
	Wed, 02 Apr 2014 23:01:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Wed, 2 Apr 2014 23:01:02 -0700 (PDT)
In-Reply-To: <854E8DBA9F41904AB047E03BB6963AE501A0E62E@SHSMSX101.ccr.corp.intel.com>
References: <854E8DBA9F41904AB047E03BB6963AE501A0E62E@SHSMSX101.ccr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 3 Apr 2014 07:01:02 +0100
Message-ID: <CAJTo0LYkrBTcbrSOAyce0tZN6WZJ=9jPOSjYpdr1WnCEY5bfwA@mail.gmail.com>
To: "Guo, Yejun" <yejun.guo@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to set LICENSE for llvm in .bb file
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
X-List-Received-Date: Thu, 03 Apr 2014 06:01:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 3 April 2014 03:16, Guo, Yejun <yejun.guo@intel.com> wrote:
> I'm adding package llvm which has its own license: University of Illinois=
/NCSA Open Source License, see at http://llvm.org/releases/3.4/LICENSE.TXT =
.  I tried something for LICENSE in .bb file, but is not recognized by the =
system. Could you please let me know how to set this value? Thanks a lot!

LLVM is already packaged outside of oe-core:

http://layers.openembedded.org/layerindex/branch/master/recipes/?q=3Dllvm

Ross

