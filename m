Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84109E0071D
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 14:20:50 -0700 (PDT)
Received: by mail-vb0-f45.google.com with SMTP id p1so134634vbi.32
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 14:20:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=3xyIzRBu/aBokJ9BNOXIkL1NeAhYX2nfK5RvDWUnqOE=;
	b=SvYL2FnLQ4F6xR5QkzVHAjO8M2bSg/5M+o0O+rcUsuKLrkyRJRQhBMQMX0Bp3mdC9M
	5Q/N1kNJykUVctIUV4kJZ2jCpBqFc7BvG1VtXf7ZdqlcvIb4EN7VmmU8qy+8fIMp6KSz
	/aNFYOZW8QCxEpTuLd5/mB5EJX9viR+4UaM/MqoVmfgPszRK/BhHcJe+gk8xqCGj5uq/
	ywbWfDpVyumRxaLjnbSZEk5dt+93atEq12ZF1tf2eyeT5lWy3evgN1Zgs2erTkvgkBmj
	RS6FikUE48g3zgGG/9s8wTbvc3ec1U/rNsXDOgYFrYJpr7UVSnrjHSkuGVnQv9dAJtGS
	IWxw==
X-Received: by 10.58.198.79 with SMTP id ja15mr7386148vec.15.1363123249574;
	Tue, 12 Mar 2013 14:20:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.232.226 with HTTP; Tue, 12 Mar 2013 14:20:28 -0700 (PDT)
In-Reply-To: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Mar 2013 14:20:28 -0700
Message-ID: <CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Gm-Message-State: ALoCoQm57kB440Hp7RVrBj3Jlmf6uoLW0noFz7hmzRfyAkBIXJWO7jSVUvluCXbrVYHghzmO9X5T
Cc: yocto@yoctoproject.org
Subject: Re: Can't find guile-2.0
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
X-List-Received-Date: Tue, 12 Mar 2013 21:20:50 -0000
Content-Type: text/plain; charset=UTF-8

On 12 March 2013 02:28, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> I'm bitbaking a console image for an Atom, which worked when I did a plain
> vanilla version. Now I've added the OpenEmbedded layer containing Samba, and
> it's failing on one thing. The error message points me to a 5000-line log
> file called
> build/tmp/work/i686-linux/autogen-native-5.12-r3/temp/log.do_configure.5923,
> and it seems to be getting errors looking for Guile. The configure script
> says this:

autogen-native should be building guile-native, you won't need the
host guile.  Can you confirm that by running "bitbake guile-native"?

Ross

