Return-Path: <erik.boto@pelagicore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9BF9E00810; Wed, 11 Mar 2015 04:11:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D99AE00777
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 04:11:41 -0700 (PDT)
Received: by qcrw7 with SMTP id w7so9083404qcr.8
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 04:11:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=73qasJTnh5SSeQYkUKbz0brLJMtj0XMG3ukVt3mZAfg=;
	b=N1o5LpV75/FS3VyezFwZ5eCkyCCIjZNKXsuBXooy6coMCciEJKcNtp5uPGMEkTFXYc
	rlKyWs/xY319DutkIncncqz0IRZKrn6v4D714OA/LBpUWz8CBIm5ehn0pLERuore1kAY
	mjjJHjHKNHYsEz+2k1LytAIXT+fZwUdEm7W01pl/FT8boTBWep6nGi+LCo9s81lOTfUt
	gNe0CN9YBUp5ZavG4xeAYqpJk4Mce8kESJ9LlE7KICSaZL9k61TcrZGJ6b++H5pQxXxI
	M2m4NpMzbZoMtEvKX7MvDwY+fkEb4Hebyjs2LdWAEgrpb4kZBbFo8Uqj7g6nQ2ab/QqA
	vKNA==
X-Gm-Message-State: ALoCoQkkt4NEwpijM7UuFLed50yvDp7wBD948lqueWC2Zo2BLKkHmtuZsA2XJ8SiKHZBF3ddI4lm
MIME-Version: 1.0
X-Received: by 10.55.31.82 with SMTP id f79mr30606182qkf.31.1426072300669;
	Wed, 11 Mar 2015 04:11:40 -0700 (PDT)
Received: by 10.96.184.133 with HTTP; Wed, 11 Mar 2015 04:11:40 -0700 (PDT)
In-Reply-To: <6369978.lMpxWLROeU@peggleto-mobl5.ger.corp.intel.com>
References: <95CF81BBD42FB348A182716C4D4310A806904248@G2W2533.americas.hpqcorp.net>
	<CA+AhUGxB1n2=gOkQ7Xdg+0i2V1c_eS-=G46QCnNzLy0kok8iQA@mail.gmail.com>
	<6369978.lMpxWLROeU@peggleto-mobl5.ger.corp.intel.com>
Date: Wed, 11 Mar 2015 12:11:40 +0100
Message-ID: <CA+AhUGwJaoZ4=7hPBJgM6xhJs2-gL2RCgrqp8W7ShhdPcQ-m=Q@mail.gmail.com>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@pelagicore.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Koehler,
	Yannick \(HP Networking\)" <yannick.koehler@hp.com>
Subject: Re: Building local sources
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
X-List-Received-Date: Wed, 11 Mar 2015 11:11:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Mar 11, 2015 at 10:42 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> I would advise against simply setting S as the build system normally thin=
ks it
> is in control of that directory and may under certain circumstances delet=
e it,
> which probably won't be what you want.
>
> We do have a proper mechanism for this kind of thing - the externalsrc cl=
ass.
> Here is a section of the manual that describes how to use it:
>
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#build=
ing-software-from-an-external-source
>
> Generally though externalsrc is designed for temporary usage; long term
> I'd recommend you keep your metadata and source code separate and
> have the recipe(s) fetch the source in the normal manner.
>

I read the first email as that the problem was simple having multiple
modules in the git-repo, I missed that the recipes and actual code was
in the same git. You are right that setting S to point somewhere
outside of ${WORKDIR} is unsafe.

Cheers,
Erik

> Cheers,
> Paul
>
> On Wednesday 11 March 2015 09:34:30 Erik Bot=C3=B6 wrote:
>> I think you should set S to whatever directory that contains your
>> source, it has a default to ${WORKDIR}/${PN}-${PV} if I remember
>> correctly.
>>
>> So S =3D "${WORKDIR}/${PN}"  should work if the recipe is named the same
>> as the subdir in git, otherwise just set it explicitly using e.g.  S =3D
>> "${WORKDIR}/module_a"
>>
>> Side note: Your example uses an underscore, which means that a and b
>> would be interpreted as versions, which is probably not intended. See
>> http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#new-reci=
pe-s
>> toring-and-naming-the-recipe
>>
>> Cheers,
>> Erik
>>
>> On Mon, Mar 9, 2015 at 4:37 PM, Koehler, Yannick (HP Networking)
>>
>> <yannick.koehler@hp.com> wrote:
>> > Hi,
>> >
>> >  I need some help regarding this since I cannot find out how to achiev=
e this.  I have a git repo with a lot of code splitted in module, such as:
>> >         /.git
>> >         /module_a
>> >         /module_b
>> >
>> >  Etc...
>> >
>> >   I want to compile those modules using a bitbake recipe within yocto =
so I created the following tree structure:
>> >         /.git
>> >         /module_a
>> >         /module_b
>> >         /poky
>> >
>> >                 /meta-modules
>> >
>> >                         /recipes-<category>
>> >
>> >                                 /module_a
>> >
>> >                                         module_a.bb
>> >
>> >                         /recipes-<category>
>> >
>> >                                 /module_b
>> >
>> >                                         module_b.bb
>> >
>> >   So far so good, but now I am having issue with unpack/compile step, =
my
>> >   modules are make-based (not autotools and not CMake).  So I used
>> >   EXTRA_OEMAKE to get them to use the proper target toolchain.  Proble=
m
>> >   lies with the SRC_URI, my files from module_a gets copied into $WORK=
DIR
>> >   and not into $S, as such the compile step failed.  I understand that
>> >   SRC_URI is not really the proper usage in such situation, appears to=
 be
>> >   meant to retrieve external packages and some files here and there,
>> >   mostly patches.  Even thought all my modules are within a git repo, =
I
>> >   do not want to extract the full repo for each modules either.
>> >
>> >   I am now looking into writing my own unpack function to move my code
>> >   under S manually, but I was wondering if yocto had something to supp=
ort
>> >   this model and I simply missed it or if writing a custom unpack is t=
he
>> >   appropriate solution (likely I'll have to create a class so that all=
 my
>> >   modules use the same unpack behavior).>
>> > Yannick Koehler
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre



--=20
Erik Bot=C3=B6
M.Sc.E.E.
SENIOR SOFTWARE ENGINEER

Pelagicore AB
Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden
Mobile: +46 (0)768 817 203
E-Mail: erik.boto@pelagicore.com

PELAGICORE Experience Change

