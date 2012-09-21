Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B5DFE013FE
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 03:07:26 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 21 Sep 2012 03:07:26 -0700
Received: by oagn16 with SMTP id n16so4084589oag.35
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 03:07:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=+pkQQHrnS3Niio6DXNzye2U9P1pVAe1bLtgZBS1qZeI=;
	b=G4YOZjXD3OSgccVtb/NQgykJMLr+/59thiUc7h+mGDvvfXnC+tonldlcP/R7hQ9UHl
	WnlzBkyCA97ns1Kn9XsndbNowHVEkoLWNEccCENbHcGmxezuaRSqsAzd+Wrde9yvxsQW
	opXA3dIip4NoW50Zt8/eZcwnoApSv8u23qVahVPzANeUARCNpPKR8V56Q+gngoC4MQty
	lJsWStCBrue7wbimxfqMdJdIwY9PLnhM3KiyarGrnEgSvfTrke+gOgop5XwAochANC2f
	uwW9h0MAMLZt0hqp/FxiEC0AnA/Xn1qTGysxHed8qUcQ8QM3k+waGFZy87mtrJ2RDudM
	IOSQ==
Received: by 10.182.108.71 with SMTP id hi7mr3544000obb.21.1348222045315; Fri,
	21 Sep 2012 03:07:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Fri, 21 Sep 2012 03:07:05 -0700 (PDT)
In-Reply-To: <C1024C359E9D4C4EBC664A0111A52A3F7CFB24B9DA@ESESSCMS0355.eemea.ericsson.se>
References: <C1024C359E9D4C4EBC664A0111A52A3F7CFB24B9DA@ESESSCMS0355.eemea.ericsson.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Sep 2012 11:07:05 +0100
Message-ID: <CAJTo0La0S28iSaO3qRzygSrFkDtit-sqRpK=azqrDh0dqj_3aA@mail.gmail.com>
To: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
X-Gm-Message-State: ALoCoQlR2QXp6P5kwWOzwNhnvE4arX4G18sivNUf9rC1PtGQ5QQfqoGmRiTWmwQjY84R9LxGs1ui
Cc: "Yocto Mailinglist \(yocto@yoctoproject.org\)" <yocto@yoctoproject.org>
Subject: Re: Using other recipes output in Makefile-project
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
X-List-Received-Date: Fri, 21 Sep 2012 10:07:26 -0000
Content-Type: text/plain; charset=UTF-8

On 21 September 2012 10:06, Jonas Jonsson L
<jonas.l.jonsson@ericsson.com> wrote:
> Hi, I'm having trouble with understanding how to use built libraries (and
> their include-files).
>
> I'm writing a bitbake-recipe for some piece of software that is
> Makefile-based.  The SW has a compilation and runtime dependency on
> readline, Sqlite3 and libxml2.
>
> In my bb-file, I've added 'DEPEND = "readline sqlite3 libxml2"' and the
> three packages are built and installed for my chosen architecture.
>
> Now how do I use the build artifacts for my compilation??  I would like to
> add 'XML2_CFLAGS=FOO', 'XML2_LIBS=BAR' etc to my EXTRA_OEMAKE so that my
> Makefile can pick up the location of the necessary include-files and
> libraries?

I'd recommend considering porting the build system to autotools, but I
know that for a lot of situations that isn't doable.

I'd also recommend changing the build system to use pkg-config for
libxml2 and sqlite3, that way it will automatically find the right
headers.

The magic variables you're looking for though are ${STAGING_INCDIR}
and ${STAGING_LIBDIR}, these are the include and lib directories under
the staging tree for the target.

Ross

