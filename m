Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DE94E014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 01:55:50 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id p12so5644746vbe.1
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 01:55:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=Cq8/NfJvo1EXYAQGW/tQPsXOYXkHhGrjULamD7cLTtA=;
	b=NPz5SwE4XsRtDmQADWaKmDgjx5nR4L4PE5463lzMDUwjbn1UVvLDPnGv56kN//zDxk
	b172yeRZFwyzaPYKKTEnOh4tIuk9RuuipNtp0WMNPALzPNPcDZKzciATxvgJepxAAvWI
	Ca6vszoR62hkeOzobm+r8UCyoQd1izfZcwtdc8jpgTLi89Z1J8a7+iIEbOuPZ1o4e/jG
	2H0wvbx+UgSk4ahFtd5UJAFbemNvJSjpsHk5Ei8q9AT+6y5NyF6Wt7F0e19r58eVtgfS
	dxMk5nh9l0JpS9k/f395PZrkAzvIg5HkLw7HEti0tRxwDmu6BO2bJTg7k49wnS43IeXV
	zwoA==
X-Received: by 10.52.165.99 with SMTP id yx3mr2123575vdb.34.1366620949419;
	Mon, 22 Apr 2013 01:55:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Mon, 22 Apr 2013 01:55:29 -0700 (PDT)
In-Reply-To: <CAFMfyz+=HMqt6Jgrsq3_GgdZL9K-obRYuYsVVrxqonzfP-t2gQ@mail.gmail.com>
References: <CAFMfyz+=HMqt6Jgrsq3_GgdZL9K-obRYuYsVVrxqonzfP-t2gQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Apr 2013 09:55:29 +0100
Message-ID: <CAJTo0LYnBG_7vyVhW2o3HK=XNHRctJ3-zE+yq2=LxrKz-WdGOQ@mail.gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQk+BP3nqTIxWQHi/L7Ecie8NosPG8CPYocm6SNeUJoMhvptmext5fe65rGWXwTj5Bpt+slX
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package which sets Background Image
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
X-List-Received-Date: Mon, 22 Apr 2013 08:55:50 -0000
Content-Type: text/plain; charset=UTF-8

On 22 April 2013 09:25, Satya Swaroop Damarla <swaroop.damarla@gmail.com> wrote:
> I hope everyone had a nice weekend.. Back to work ;-)
> I would like to know what package is used to set a background image.

This is something that you as a system builder can define - if you use
a larger desktop environment then they'll provide their own way, there
are numerous tools which can set the image such as xsri, or you can
use the tool provided by X, xsetroot.  Finally, you can do it yourself
if you're already coding some of the system, setting the root window
contents is fairly simple.

Ross

