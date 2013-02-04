Return-Path: <cazfi74@gmail.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8724E006D2
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2013 02:34:40 -0800 (PST)
Received: by mail-ve0-f172.google.com with SMTP id cz11so3027658veb.17
	for <yocto@yoctoproject.org>; Mon, 04 Feb 2013 02:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=/NgnKUiQxOfOxwwf9HwIlDDIwUpF77ft5fxeO2M7Nss=;
	b=aqFX2NJQNnhwYTKDbMy3CI0Cf21GFSUE/v+UxAnnRwoAwLYVvyRu/G7uw6nb5XJy3x
	mF73+/mmI1UmHgUPZTM8qLNRIxrMyXNhxKOEW0o0q2PTyEHZqKxyPHxGVOyIv6K2/mD+
	jHuIb04FGWI9P0+5zclj5+eVWHOivtTu7l94ZW3qZreJRWFgbxTy3F58uFeCfYI47yBc
	vuQmUCeCmkmjctzkQuBql0XHcwGKfA42j2J2ijz0NmtnMLq858BspCfh+Nx3QWpZKHAt
	YRZHCApbbld2RV1+JvsKxYBezOCQkzW2hrLfWpITa6B09uHBlX7+ZhvGdDZjbfPGt1um
	9brw==
MIME-Version: 1.0
X-Received: by 10.52.98.134 with SMTP id ei6mr18780010vdb.114.1359974080173;
	Mon, 04 Feb 2013 02:34:40 -0800 (PST)
Received: by 10.58.80.2 with HTTP; Mon, 4 Feb 2013 02:34:40 -0800 (PST)
In-Reply-To: <CAJTo0LawPggogja+26bcns3bBxa_1xpYXM8bk2iog1Bu6urDjw@mail.gmail.com>
References: <1359856736-25568-1-git-send-email-cazfi74@gmail.com>
	<CAJTo0LawPggogja+26bcns3bBxa_1xpYXM8bk2iog1Bu6urDjw@mail.gmail.com>
Date: Mon, 4 Feb 2013 12:34:40 +0200
Message-ID: <CAF6bG8fMw4Qkz5V_cskf2byYa476ZTYz95Lr3kptWTJ47FXgdw@mail.gmail.com>
From: Marko Lindqvist <cazfi74@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Matchbox-terminal fixes
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
X-List-Received-Date: Mon, 04 Feb 2013 10:34:41 -0000
Content-Type: text/plain; charset=UTF-8

On 4 February 2013 12:16, Burton, Ross <ross.burton@intel.com> wrote:
> Hi Marko,
>
> On 3 February 2013 01:58, Marko Lindqvist <cazfi74@gmail.com> wrote:
>>   INSTALL in git repo is a symlink outside the repository, to
>>   file installed as part of automake-1.10 (and only when automake-1.10
>>   installed to default location) It was dangling in my system without
>>   automake-1.10. Such a link should not be under version control
>
> Well spotted - fixed in git. Does this cause any problems with
> automake 1.13, or was it purely cosmetic?

 Cosmetic.


 - ML

