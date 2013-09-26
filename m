Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 121B5E01640
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:13:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Sep 2013 03:10:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,984,1371106800"; d="scan'208";a="409700519"
Received: from unknown (HELO helios.localnet) ([10.252.120.50])
	by orsmga002.jf.intel.com with ESMTP; 26 Sep 2013 03:13:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Date: Thu, 26 Sep 2013 11:13:35 +0100
Message-ID: <15510684.X3bYELTYuV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAFyqS9pb0aXUVgKH7vANiNxhrXMtfVxGRd9FDVj8Y1Rk=0XgFw@mail.gmail.com>
References: <CAFyqS9pb0aXUVgKH7vANiNxhrXMtfVxGRd9FDVj8Y1Rk=0XgFw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to combine BBCLASSEXTEND and variable export
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
X-List-Received-Date: Thu, 26 Sep 2013 10:13:38 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Hans,

On Wednesday 25 September 2013 17:39:04 Hans Beck=E9rus wrote:
> Hi. I have a recipe that use BBCLASSEXTEND to extend native. For the
> normal/base version I wish to set/export an environment variable to b=
e
> picked up by configure.
> But I do not wish this variable to be set by the native package. How
> would I accomplish that? It was ok before when I had a package-native=

> recipe but since that is obsolete in favor for BBCLASSEXTEND I wish t=
o
> remove it. I think I covered all the other caveats like DEPEND and
> PACKAGE/FILES. But this one is not as straight forward, or is it?

If I'm understanding the requirements correctly think you could do some=
thing=20
like:

do_configure_prepend_class_target() {
=09export VARIABLE=3Dvalue
}

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

