Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6DF2E00D20; Thu, 28 Mar 2019 16:54:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C62E00D16
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 16:54:42 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id d201so309823iof.7
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 16:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OyDw5Dj+ZlzJf+eyztrAa6L/bfn5EsP6vsjzCiJQ1E0=;
	b=oHNFTUNjA0sIRm71UE8q7ig5E3NVxlRIvSIk/R6xr37DcJgqvnzoiAEp6cmEJEPXhY
	Mgkj0DmBjq+lPxremSyHQPy1uEBFWEgZiLszVVMO/V05mmf92tZzk3wUjjgz+Qj/Ye7+
	aP42FSnC5151Ux+X6VI+HofjVXfgFi8yluG3LcI5h+2Tgv71orB4DPu0JHXw9y5Rnujw
	Tucaeey70Kb+FxhpSvYICzTxgLuDbKCeIT5az+BMCZ6zUuzv1Nm2njub4h+nf5AbwT+T
	fnjAa+zczaMRur07u9exuZK7KhT3OFx6vVdTa3WpJjtyoFh0qFOaSuHfdWCbOPt0IsC7
	l1Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OyDw5Dj+ZlzJf+eyztrAa6L/bfn5EsP6vsjzCiJQ1E0=;
	b=Cj9gAbqVAOoa260AOuBrxEH+u4rad4b0delMs00pKEEGC+LWRhwYv9JNkHzIhtrupK
	ElsuCsCUIYOlYKpGN2s5L2YCcDohtYkBNEXzxaLtVYYj70PfiJWLj2696td5CXnJO0gk
	58tDAzSsDLpX+k5BjgPT+b7k4Xasp0e6doF6N0f4L+2uru1uTQ/aDGgaBfgCymOHXg+0
	hfDmCQ3rms0Mo94VpE6Yj9qk4lQnocZyEialR3xBWku78f8r5/3gXZebDb6YiNKwt5sI
	+/HNzNy2RzVPNEFjboMHafGvHQ9olkn2f59MkhEobAIErIg+jTyBrZ3m5AWMcJ8pvo1Y
	lAUA==
X-Gm-Message-State: APjAAAUfZiBgiWyhXoWFdL7z+RpepzGfieCsOEzUkuJXPYKQnPo1inmi
	daUPhTL2vz3DSRGyY2wBPSNX5zhHK2z2g9QZ/CjlHA==
X-Google-Smtp-Source: APXvYqyUPbmilujiR3fykU+aFOUUWhq5LU54bl9AmKAUoVRrUgsb1UJ92/NkJSkQmqgC2w/DZP3rxEva4Le0yhBhMy4=
X-Received: by 2002:a6b:1495:: with SMTP id 143mr30312613iou.201.1553817282117;
	Thu, 28 Mar 2019 16:54:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAFvQSYSDbe5YEEvFG+sF8enGzG+AsGoms6TYe_DCv-snZiqRYw@mail.gmail.com>
In-Reply-To: <CAFvQSYSDbe5YEEvFG+sF8enGzG+AsGoms6TYe_DCv-snZiqRYw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Mar 2019 23:54:30 +0000
Message-ID: <CAJTo0LaromaqsWigi1skaoD5gRQp6JdPXg1WUBV=i8LRq2PHRQ@mail.gmail.com>
To: Clemens Eisserer <linuxhippy@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: pkg-config does not find "luajit" since upgrade to sumo
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
X-List-Received-Date: Thu, 28 Mar 2019 23:54:43 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 28 Mar 2019 at 23:45, Clemens Eisserer <linuxhippy@gmail.com> wrote:
> The bb-file specifies luajit as runtime-dependency as well as inherits
> pkgconfig:
>
> RDEPENDS_${PN} = "luajit"
> inherit autotools pkgconfig

Considering you're trying to use luajit at build time, it's probably
sensible to have it as a build dependency instead (DEPENDS).

Ross

