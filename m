Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 7A692E01510
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 23:11:37 -0800 (PST)
Received: by mail-qc0-f178.google.com with SMTP id j34so1362124qco.37
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 23:11:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type:x-gm-message-state;
	bh=eMVGED+dz064iKxHS6lqoAewBQJPYsPW9dgBJ7wP4Eo=;
	b=GFjLGdUewp9aTwOIwtSdnFTLO6DJK39tcG642qESrJAkn2QGGmvKM2UmyxSVOeu+Tf
	Y04nXzVM15FiITHANi5j/F5hCrcU+xCjmD8A5y8PjSQomiT1F7RKCnts0Q3OZkWDDaHJ
	2uPsZKTo8w3J6nx2o0rKlsTkMp5UZNZOpxwGyRGl4e/B4X//xY67IbTJzAg2dLG5cBaS
	nXzmtZoc19/wh9gR+iZoM/VAgEM8u0DPcwSCOWYkkGn8aJT/n8X+er3g2//ev6Yu+qgU
	0LlEsAjyRKuhyQkMoy2cBrm+VmkygZTDOtBw/fCOGyXZBkUOjAju7A3gghUPip5iRg3D
	0+3w==
MIME-Version: 1.0
X-Received: by 10.49.17.198 with SMTP id q6mr41319407qed.40.1362553896072;
	Tue, 05 Mar 2013 23:11:36 -0800 (PST)
Received: by 10.49.95.166 with HTTP; Tue, 5 Mar 2013 23:11:35 -0800 (PST)
In-Reply-To: <CAPhnLPDbt1AsnKJ2XJd9bQSG2aBWZk4A0-cVn1w-_N5QmerQQw@mail.gmail.com>
References: <CAPhnLPDbt1AsnKJ2XJd9bQSG2aBWZk4A0-cVn1w-_N5QmerQQw@mail.gmail.com>
Date: Tue, 5 Mar 2013 23:11:35 -0800
Message-ID: <CAPhnLPAZZGwdxyGcsLWfu=Q=Eh3Nn+tFA=TkcyMThVej0P8xhw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkdjtkuM9Z/739wkK3qX/+enhgjr54J/QgzIrcJDsXl2gcwq7TzU4eeaOCPEqyFemiVkKEA
Subject: Re: Weekly build availability
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
X-List-Received-Date: Wed, 06 Mar 2013 07:11:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

I forgot to add commit info. These are all off of master:

poky: 6663b79452bcdd95fc69e1ec853baae6c5297ab2
meta-qt3: 06e2fe600de962cdba53c23de1207501439a9c9f
eclipse: 8626c79df3188283b568269abbf6c48a2b9d17d7
meta-intel: 570ab0c828cec1aa8e4d6bb6b16b456483d23601

-b

On Tue, Mar 5, 2013 at 7:21 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> This weeks build is partially available. I should be complete in a few
> hours at http://autobuilder.yoctoproject.org/pub/nightly/20130305-2
>
> So far, the only failures I'm seeing are sanity tests (boot issue in
> qemuarm core-image-minimal and smart_query failure in qemumips)
>
> Please begin testing.
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

