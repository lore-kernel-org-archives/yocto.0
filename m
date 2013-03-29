Return-Path: <otavio.salvador@gmail.com>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC6BAE003AA
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2013 14:58:09 -0700 (PDT)
Received: by mail-oa0-f41.google.com with SMTP id f4so691121oah.28
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2013 14:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=wE/jQiENN0aDtD9mDuC1RlMjBiyht2FeX0yTJuzOcaI=;
	b=1Ai5RnodtqXWRf8TQ4tbIReaMMxiJopvuGLrzqIFr+LgzCSyJDDnwtMnrABL22mcVg
	0h9Rfm7Dhvpw6EJ69hR0AmMb1ht7zlkU/O8Q1s9cbwk0YQyE0rBFKTOhOqLKVY0/QsUI
	9Q8hbewou+Pjb9E+cc1DNrH/oefpItLBKe1a4R+nXPP+1qe3OdeUCysLxlCD+0pOFEYX
	O9qMDIKoUCA5n/pj/sqnSNhOwx3ci40zuJtLKSl7uDPi+Tl7Bzk8APXRIqgVnWCvqyo6
	T5iwuCqRT+P/Mkl1mIbxkJLxHlnxuGAbIOk7gNRuORsS0Iq/FEVRFMM1u4s13YJP1qOX
	/NlA==
MIME-Version: 1.0
X-Received: by 10.60.25.65 with SMTP id a1mr1355696oeg.40.1364594289165; Fri,
	29 Mar 2013 14:58:09 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.182.80.198 with HTTP; Fri, 29 Mar 2013 14:58:09 -0700 (PDT)
In-Reply-To: <3982011.Guen6pOcoq@helios>
References: <3982011.Guen6pOcoq@helios>
Date: Fri, 29 Mar 2013 18:58:09 -0300
X-Google-Sender-Auth: ob3MxVK2Dr2xiE2HdXenwSohAEs
Message-ID: <CAP9ODKrG4Q22XbpHBec7144kYCZD3D6ULfeHR5yH8fygcu=ZwQ@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] New OE layer index now available
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
X-List-Received-Date: Fri, 29 Mar 2013 21:58:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 29, 2013 at 6:34 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> There is a new index for OpenEmbedded layers available here:
>
>   http://layers.openembedded.org
>
> It can be used to browse and search for existing layers, as well as the
> recipes and machines contained within them. In addition to the short
> description, repository location and usage link we were collecting in the
> existing wiki, we can now store information on maintainers, layer
> dependencies, and the associated mailing list, as well as a longer
> description. New layers can be submitted easily using a simple form which does
> not require a login.

I'd like to update some info in some layers I am the maintainer; how
can I do it?


--
Otavio Salvador                             O.S. Systems
E-mail: otavio@ossystems.com.br  http://www.ossystems.com.br
Mobile: +55 53 9981-7854              http://projetos.ossystems.com.br

