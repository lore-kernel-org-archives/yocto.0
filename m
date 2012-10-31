Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AEFAE0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 03:09:12 -0700 (PDT)
Received: from mail-oa0-f72.google.com ([209.85.219.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 31 Oct 2012 03:08:42 -0700
Received: by mail-oa0-f72.google.com with SMTP id h2so3808018oag.11
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 03:09:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=IbDyNlskUaJ7AA5x9q4Q/FtCVp4SvlkiuzlBdi+FSmA=;
	b=hc4FizfUV5I455z9dBSQrVWqbhZTaNtz51bVfWjAwDo3i55CHR1J6skHQsLjoF5VYP
	LgRew6T9Pj6LHDw8hz34YvcliyMNCKUNp6j803hz/Tn8vRFpFGIU+SuZ5M4kXdZLzj1p
	1aCZENt5yXhxBIGvvgnLlUIwxHGAk3zdQ0Iu03DYbB0G/AkoeRNM/N9e+1tx7uovd5Pq
	zwPt2Fxj8xxzfwb4I9BNrGIKKunTT8frez4VYcu400s1ndqzjxyuMohY8dV+H6rNXZfi
	4mKjE7eDqSS5ZL/YTELHXvZpuIVbsIhQx+En5vx+zaN/FJIaYBCdh9jh813xAb7JUflY
	xFRQ==
Received: by 10.60.32.210 with SMTP id l18mr31714799oei.79.1351678151507;
	Wed, 31 Oct 2012 03:09:11 -0700 (PDT)
Received: by 10.60.32.210 with SMTP id l18mr31714793oei.79.1351678151407; Wed,
	31 Oct 2012 03:09:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.68.135 with HTTP; Wed, 31 Oct 2012 03:08:50 -0700 (PDT)
In-Reply-To: <c96937070148df425280694792319389c2687607.1351650062.git.nitin.a.kamble@intel.com>
References: <cover.1351650062.git.nitin.a.kamble@intel.com>
	<c96937070148df425280694792319389c2687607.1351650062.git.nitin.a.kamble@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 31 Oct 2012 10:08:50 +0000
Message-ID: <CAJTo0LaKm-9w54qTwhYNet0X=u7eWpkK3VLMkJGbW84kgCJGzA@mail.gmail.com>
To: nitin.a.kamble@intel.com
X-Gm-Message-State: ALoCoQm/i7UOiGntjtTA2Z16jBtTAyxNUvn51kMVwUuH+xJAYSEAuR5UVB0Y44QcKpzqJkm7C82RoPaM/EoXmtmhwGw1CbxOYaX/8UjhqxcnKE796mCYXOCCeYf546wPWAIN06En6rfmVCH5+2EoGiiCDkF5BTW/cQ==
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [PATCH 2/4] libva-intel-driver: update to the latest version
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
X-List-Received-Date: Wed, 31 Oct 2012 10:09:13 -0000
Content-Type: text/plain; charset=UTF-8

On 31 October 2012 02:23,  <nitin.a.kamble@intel.com> wrote:
> The maintainer of the upstream project is recommending
> to update the recipe to the latest version to fix the video
> playback issue.

The latest version is actually .18, not .17.

Ross

