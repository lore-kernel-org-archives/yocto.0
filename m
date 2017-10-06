Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1125E00DAB; Fri,  6 Oct 2017 16:35:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7043CE00D8F
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 16:35:02 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id k4so10851233wmc.1
	for <yocto@yoctoproject.org>; Fri, 06 Oct 2017 16:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Pv9ACai2KL43jZX8NvkaOryEyzrCwFEFUMJePUiGosg=;
	b=nT1GyjvBj2zN8TI5GjGJmsPrrhKgCWddzEywUdvn0sj9I69Jsn8Ijr99bJzEyij+AS
	eBhsiRJW+zqzQHB3fshR8nCPZPJX/hfT3uNR8vzIVnke5POJjksHqnBIHScM6UQuCXL/
	e/KitjyW8JbxdFSTs85Y1ZVGLMQbIp4QEa9URMcuwpSbvTN5p0QBH15W/w56iEVVVQmP
	KyQoFeyHhuoM/nFnRiPfaaVHBP4jylpCnHy9jts2GqthrpC60shlkkWNUSsu9FTu19ra
	zt9KUQdz9dtJFxgOIUo9h+FvZ0C58wIrQssdfBPcLWyvSqVPJkdv0AF2wAtna1uBUwzB
	rXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Pv9ACai2KL43jZX8NvkaOryEyzrCwFEFUMJePUiGosg=;
	b=RQ3oPuwgxbNPkmfTiJaEU79h3vsQW09KEWeeRZgOaun84jw/dJMagui9LOKH6CnYpN
	ipsTCStBhdEoJPgUljau2qCYTfOmQVNz9eb8hoJPAIbu3t3sSfgXBci5tvCSZq77tanL
	oA2uIIZ+VemIiBMKiOlajSR9b4PR628sGvX5/l5uiNZbnAKWWC/x9gJuNOKG3cM2si6A
	0hm9tqxO2VDw+7z4f5iuokOafEPVEy551U2pULPFr50Nkd9XzHF+wJksTJ7HDObjlLZ0
	qZG/NtZQh3YozmegLfjxDc+gWKIMQRN3ikMHh32KVrPh0Q8DZT4UVEN0lsILb7qkVq6f
	GAQw==
X-Gm-Message-State: AMCzsaXleCnSmq3Ol4Q/VCwNrFbGMsgB/5Z+nx0T6/oGtdodBDB88MyQ
	Z44PbUgrN7jpIQkXAX+33HmdnKv9CCwB1BaUa3I=
X-Google-Smtp-Source: AOwi7QC4olRZGXZM4wDIpgNqT6XWtAqM6RtEIgRnyrvj+tilOk5svgP6kMQtRCA+GUOa4I7kIv0mkXrBTj/oboNFMz8=
X-Received: by 10.223.186.140 with SMTP id p12mr3273829wrg.235.1507332902213; 
	Fri, 06 Oct 2017 16:35:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.19 with HTTP; Fri, 6 Oct 2017 16:35:01 -0700 (PDT)
In-Reply-To: <TU4PR8401MB1040AD278D9EA3A0B1A82E7599710@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR8401MB1040AD278D9EA3A0B1A82E7599710@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 6 Oct 2017 16:35:01 -0700
Message-ID: <CAJ86T=WUwoTtZGb7oq9PZLQM2cGM5Ffr1aJpncEMV+pgBsnCFw@mail.gmail.com>
To: "Gutierrez, Hernan Ildefonso (Boise R&D, FW)" <hernan_gutierrez@hp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Framework to implement mirroring in Yocto
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
X-List-Received-Date: Fri, 06 Oct 2017 23:35:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 6, 2017 at 3:08 PM, Gutierrez, Hernan Ildefonso (Boise
R&D, FW) <hernan_gutierrez@hp.com> wrote:
> Hi,
>
> We are planning to implement a mirror for both source code downloaded and
> sscache in our work environment.
>
> We are planning to use Nexus and Nuget to allow storage and versioning
> control. We don=E2=80=99t know if these are the right tools.

There are two main aspects of a mirror, fetching from the mirror
(happens during the build process) and populating the mirror
(generally happens outside the main build process).

For fetching from the mirror during the build process, the bitbake
fetchers are used, so your server needs to be accessible via a
protocol which the fetchers support, e.g http or https would be
recommended. Support for sstate mirrors via https with a password (ie
if you want private mirrors which can be accessed over the internet
without needing a VPN) was first added in pyro, so you'll need to
backport a couple of patches to make that work with morty. If the
standard bitbake fetchers don't meet your needs then it's not a huge
task to write a custom fetcher - see the Amazon S3 fetcher recently
added to bitbake. It's less than 100 lines of code.

For populating the mirror, you will likely need to implement something
custom, ie outside bitbake and the build process, since bitbake only
really supports writing sstate and downloads to local directories. It
could be something as simple as running rsync after every build to
upload from the build server's local sstate and downloads directories
to the mirror server(s). It could be something more complex - it's up
to you.

Note that for both sstate and downloads the files on the mirror would
be expected to be unique (e.g. there would never be two different
versions of "gcc-6.3.0.tar.bz2", etc), so there's no obvious reason to
be able to snapshot or version the state of the mirrors. Just let the
files accumulate over time - the old versions won't be lost or
over-written.

> Since we are about to embark in this project, before starting I wanted to
> know if you have some pointers on how can be implemented a mirroring
> framework for yocto.
>
> Not sure if there are some common tools (other tools) with which yocto
> integrates nicely.
>
> Any pointers will be appreciated,
>

