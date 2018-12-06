Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73A77E00C31; Thu,  6 Dec 2018 08:06:36 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CE09E008C6
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2018 08:06:35 -0800 (PST)
Received: by mail-it1-f175.google.com with SMTP id c9so2248273itj.1
	for <yocto@yoctoproject.org>; Thu, 06 Dec 2018 08:06:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+Fzj3WqA8q7DGQ0xsRGMtzuat4Y+8lglpSfYSwCIhKY=;
	b=epo5/vwBJTMQaSBsEkdCPaDOAVErePGCmVknQ4ng7fAyjBS+MmMtdUnK0T8cvr38wi
	aErEU1lIrTXYo2bx8TBRtvJ+/8MzZt7Z7LQq+cTZoHcZnEFDZjsY14RFXTTeTTjPNkPq
	PkgLUDWppvYxMt3rP5MpqJb3fhpJ6tJ3E4/S9VqNOyLKjQvzJG9M8l1zuRmhoCg+GEmD
	u6d3bRAjUVFe0AHt1ybrTqEZ1QbNuCjBBqK4F2xhlrMofyhDV+RsCG8pLeJDmRPjdoO/
	6s6yY4Fq4E3WXLmzSJiVPh85A2A6/wcB6smElMKuC1t0DDziSqiyMsMSb68lzrakXALF
	fRnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+Fzj3WqA8q7DGQ0xsRGMtzuat4Y+8lglpSfYSwCIhKY=;
	b=tAhG1TYc5ebCky9vISWknmvJPqcaQT5BjKVDbKUioH3FvG8/GYhFa9tYZTjS7HFau/
	9hR2ldrGipzJVNw3KNefeGjNiWuuQXnp29hX5Nzdz0q26xfsPmsLl3jUvUKFPDFiujbS
	XzEhyRrESRKdAnZsHHpwqhdmXXsQuRbrNSaO1A/57OsPGBOGXjyvMasrSmOZZdE6WguY
	aSsXPRdnD8uRwCG06lIHF5L9VP0j5ujfWWKwnu02jQMScrtOXD3WV0DRlrrwO47ilV/9
	uvpWzq8pDLXunJfbND0c7uNcjlk++Eh5WFskl9PMRNzlUhgSs4j1NXi0GdYfEPATfFGk
	nbJA==
X-Gm-Message-State: AA+aEWb4RpZVVqqHRmbcDvifP6ZydQbH8WCSmFsqB0IHfMtvT59SEgQ2
	PqKVnqkC2oglwn7vhqNUTKhsE0CtpqcIzsB4NcQt3w==
X-Google-Smtp-Source: AFSGD/W8CW/dtQ6Cvjfw4NTF/Top8TDgvUQ5haK8TMHh3qK+wLkmiQkplXagBHnYeRcSdGrY9H5HG+6DrGS8PEMrNJY=
X-Received: by 2002:a24:8e43:: with SMTP id h64mr8659658ite.26.1544112394828; 
	Thu, 06 Dec 2018 08:06:34 -0800 (PST)
MIME-Version: 1.0
References: <CAE5v_rKx_+pqhPnUMb9do6DnaJYt_eCs65KFXBya6PznYZEUaQ@mail.gmail.com>
In-Reply-To: <CAE5v_rKx_+pqhPnUMb9do6DnaJYt_eCs65KFXBya6PznYZEUaQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 6 Dec 2018 16:06:22 +0000
Message-ID: <CAJTo0LYfJ0QESn1zFXr5qvMLGZDV4QiNvf7g5Gq7VMEq8ASNEg@mail.gmail.com>
To: tmichalski23@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: overwriting do_install causes cmake install not executed
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
X-List-Received-Date: Thu, 06 Dec 2018 16:06:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 6 Dec 2018 at 16:03, Tomasz Michalski <tmichalski23@gmail.com> wrot=
e:
> I have recipe componentX.bb which refer to some C++ repository. In C++ re=
pository I have in main CMakeList.txt:
>
> install(PROGRAMS ./script/start.sh DESTINATION ${CMAKE_INSTALL_COMPONENTX=
DIR}/init.d)
> install(PROGRAMS ./script/functions.sh DESTINATION ${CMAKE_INSTALL_BINDIR=
})
>
> When I add to componentX.bb my own implementation of do_install() then st=
art.sh and function.sh script is not installed from CMakeList.txt!
> How to tell bitbake in do_install() body to installl this what is in CMak=
eList.txt and moreover something more? Using do_install_append() is not a s=
olution for my case because do_install_append() cannot be overwritten in an=
other meta-layer, for example in componentX.bbappend. So this must be do_in=
stall() function.

By writing your own do_install you're replacing the cmake class's
do_install which is why it doesn't install those files.

From inside your own do_install() you can call the cmake class
do_install directly: it's called cmake_do_install.

Ross

