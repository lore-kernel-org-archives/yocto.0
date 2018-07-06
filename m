Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A4C1E00E02; Fri,  6 Jul 2018 15:08:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74D56E00A48
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 15:08:36 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id y8-v6so8427099uan.3
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 15:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NkaLIOwBHAMppgLXQYALkvSsQKxmD6jRHevT8inpFgM=;
	b=rOjNk41IbGTVp9nN+x1Q5BWnD1PlGhbTGZngaqgd76uCYP6nl/TNEhsrGAkFU59X9P
	yGJhhaGVDDXEja7iO2qcsr2QmWU3W2OPC++iyd4F/fOPcSlEG1ziVhDeObhVRERn5YRE
	UdHDP1PlpujCE6hGqiRuKVv75KHgu2/Kaf3mCjdpTzH48HaCSZhJDtH8AQ+Cviq5Kl0F
	6HD4MePfxDMVvomfwOQLq6aIMDv6Of7Vja9nUYgxYui94jujUyMclpmbJxtN/SJL5qUJ
	7AFfX9vLdoGKFWcJdNJnCzVfD84cmNtFM15rmqi83aUqbr2qKIbim4R95R5MZ/HBx7mE
	IOtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NkaLIOwBHAMppgLXQYALkvSsQKxmD6jRHevT8inpFgM=;
	b=agr0o82E2uDCQ4MFch0LrO3gomrXBWoGVG3JrhQOOwMUdun4+pn3MANVD9hxIYVdA6
	FzNIx1qdO4UxCo79uhbsCTeON/mMsyGNudMdU1gvfYp0EeqdFUh0pT7xjU54siE3famx
	4hTLjtt5+5d+FOIYY4lH8jXkX76YS8mADEQQn4V+VwHYQQkaUQSTSzqzTcfa9OWC50fH
	9SCQCdFJoH3KV3o9nxbGAIO9hdevruz2W3tLlS5JR68DN0pTFWUHQbHR+6qUWWeGWz6W
	6hxbYH7tMDGwZO2RKwrvHVlJfVMr8U41anuMwwJ9OheiIIn/oDbnm25Csvy++3J1JD24
	hHIw==
X-Gm-Message-State: APt69E2AkHvrFjEkxAScGqJ9ilOOFmgbFCDaE9Z+m6FQ0UNSg2EpVwLJ
	uVKYAP+hiNd0ja0kWbSPO79PQs06cgTh14ybCRY=
X-Google-Smtp-Source: AAOMgpdejgnHJdEg4fR/EE/jPBk+BrUqXQw7+Pu/Hn1YnhahcQhcdUXtqkF7bDRgKkRZnH41Qoe7k3Kyx72T/UNKAtY=
X-Received: by 2002:ab0:136c:: with SMTP id
	h41-v6mr7809153uae.193.1530914915784; 
	Fri, 06 Jul 2018 15:08:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Fri, 6 Jul 2018 15:08:35 -0700 (PDT)
In-Reply-To: <CAFzUWGn2BBjYzOQAfCkVnbQWH0L77cTe7EYQKX5eTbL7Mg13gQ@mail.gmail.com>
References: <CAFzUWGm+ji+pGQJAxz-bFMUok4eLSkMgMNyUtYw_OWDyUdHz6g@mail.gmail.com>
	<CAJTo0LZ6FK+F_nsVyi3YmsAaGhqc0RCLV74gfmb8=WRY4C6iow@mail.gmail.com>
	<CAJ86T=X4NjfRUwN3vq6i8FTQ=6iqUoMjOc136ZRtfmm2ecJ+aA@mail.gmail.com>
	<CAFzUWGmE8sUDbBUZjfzRCSJ6e_SXiLfxYkof3uB+b275sD_0pg@mail.gmail.com>
	<CAJ86T=WyWPYtBNUvWySd6qTTg5HyB1Hg_nHqftg+vpP7wtDizA@mail.gmail.com>
	<CAFzUWGn2BBjYzOQAfCkVnbQWH0L77cTe7EYQKX5eTbL7Mg13gQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 6 Jul 2018 15:08:35 -0700
Message-ID: <CAJ86T=X5q3ozHJL9Ns97o=NcKR3qc-5DkaNVf+B4KnBOZD4tmw@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Understanding "dev package contains non-symlink"
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
X-List-Received-Date: Fri, 06 Jul 2018 22:08:37 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 6, 2018 at 2:10 PM, Giordon Stark <kratsg@gmail.com> wrote:
> Hi,
>
> So the good news is that this is at least the source code itself appears to
> be written in a packaged-up-manner which makes some things easier to deal
> with. It seems that all of the plugins are here:
> https://github.com/xrootd/xrootd/blob/dad82068ae99859ebf40f65d95fe7c44f7db057e/src/XrdPlugins.cmake
>
> where it seems to install to
>
> install(
>   TARGETS ${LIB_XRD_PSS} ${LIB_XRD_BWM} ${LIB_XRD_GPFS} ${LIB_XRD_ZCRC32}
> ${LIB_XRD_THROTTLE} ${LIB_XRD_N2NO2P}
>   LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR} )
>
> While all other "non-plugins" also install to the same
> "CMAKE_INSTALL_LIBDIR". I suppose it might be possible to patch this one
> particular file to get the installs in a separate location? This seems like
> potentially a short patch given that all plug-ins, from a cursory glance,
> are installed with the same CMake instruction...
>
> If not, I would be ok with adding
>
> INSANE_SKIP_${PN} += "dev-so"
>
> to my recipe along with the other two lines I've added (one to erase the
> so-libs pattern for ${PN}-dev, and one to force all the *.so libs into
> ${PN}).
>
> Would a third option be to just manually write out my ${PN} and ${PN}-dev
> files to split up which are symlinks and which are not -- given that I'm
> writing this recipe for a given version/configuration?

Yes, that should be OK.

