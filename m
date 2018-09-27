Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27941E00B77; Thu, 27 Sep 2018 13:59:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58784E0090A
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 13:59:16 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id 13-v6so3480868ois.1
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2018 13:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=75/KIYZ+wT5oTVv53FOAWfBJbJF2lxxVXk94XASuxYo=;
	b=AYrif/MNPFo8DdwD6GtSJOQGeXUEJo9jkkz2NCaoC7MBcH6QT7kn1RXO3wTtI9OE+t
	1MOB4e3RsEaKo75PvW9g4WwrXcJpw9Rf6aa7i3EFo8iJ6z+UgcGeQUyf8OYn6ppVetzI
	MkIlQp9QTEaPdM7W3fZC/d0rptmdLBmiYbL+QF90Bx9PjpYXztYaSn5XYlyb4Mb13so1
	hREwS9Tq5NvfOSTBLOSTeEXyn/lGlsNeeJOnH1YCz8UgVjPz20ojzuy/fWuwXZE5eNL0
	QoG87rqMYBHkIEQFG6YV/sMcJcFMRDe3Db82qmbNlNJoaGP1Ae8Dimfe1dm3QpR61LQ7
	9qiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=75/KIYZ+wT5oTVv53FOAWfBJbJF2lxxVXk94XASuxYo=;
	b=nPjcKPDjfhYk6cL2Os2AQaWjfqXERm+wkpavE0nu0RIJr2eCkCbTU8k2iLnidxneTV
	Sg9b68R9u/Kj1ccVF82e3l3Nx7dVQEbTgV0XnIiZ7Hjap/0S29f8stLpHMm3MfSSDB12
	dUV/pOZ9ltI6NaiIJKH3oNfnmQPWvwCm8Wv3nuYiZ3T5dR4AMxUvmMA5yCkp30E3xegN
	tYWkai1pYF9U3qR6sCxN3I0faDZdl5vNqP8dPrzdXhCHzHovoKTCRTW3Hb7SE5UL9g3Q
	/Tk63kqLUjICdVJySPKzyeXtNhkQ5daK3JjysFa6TPbwrkFJETt5NccJlobUby6sQ+fa
	kATw==
X-Gm-Message-State: ABuFfoij3IBcSmZELIMYBE4jI03Y/rTtsFjvYIxc+gC5wEaZk1HTpIoZ
	tCzGWGeWCwYV5LdB/veAVlf/yBesxaI6IN7dgHM=
X-Google-Smtp-Source: ACcGV60mjsjpkrM33xP5oEt9VHi531DvHK4ecE1AiTE2oV8YFE+0wF4noDqlBw6viWQNsci2bxYOVQDADXklK/c6EYs=
X-Received: by 2002:aca:ed57:: with SMTP id
	l84-v6mr4297268oih.188.1538081955707; 
	Thu, 27 Sep 2018 13:59:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:490c:0:0:0:0:0 with HTTP; Thu, 27 Sep 2018 13:59:15
	-0700 (PDT)
In-Reply-To: <1721109.tuLG3TFsTU@localhost.localdomain>
References: <1721109.tuLG3TFsTU@localhost.localdomain>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 27 Sep 2018 22:59:15 +0200
Message-ID: <CALbNGRRhGOx7rcZq=kFypcPC=BWoPtimH-oFqpJXfmoT4eHgww@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] layers.openembedded.org upgraded
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
X-List-Received-Date: Thu, 27 Sep 2018 20:59:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 27, 2018 at 10:42 PM, Paul Eggleton <paul.eggleton@intel.com> w=
rote:
> Hi all,
>
> I'm very happy to announce that we've finally been able to upgrade the la=
yer
> index at http://layers.openembedded.org to the latest revision on master,
> incorporating quite a bit of work that's been going on for the past few
> months. Improvements now visible:
>
> * Patch tracking - each recipe detail page now lists any patches being ap=
plied
> by the recipe along with upstream status for each - see attached screensh=
ot.
> You can click through to view/download the actual patch, and any URLs in =
the
> supplemental status text are also made into clickable links.
>
> * Source tracking - remote entries in SRC_URI are now listed on the recip=
e
> detail page and made into clickable links where possible - see attached
> screenshot
>
> * Link to inc files - there is now a link in the recipe detail page to an=
y inc
> files that a recipe includes as long as they are in the same directory, a=
s a
> shortcut to see the rest of the definitions for the recipe.
>
> * Recipe list CSV export - there is now an "Export CSV" button at the top=
 of
> the recipe list on the layer detail page. This currently includes the rec=
ipe
> name and version - we could look at extending this, but note that the RES=
T API
> provides access to all of the information programmatically and may be bet=
ter
> suited for many applications that need this data.
>
> * Site-wide notice support - admins can now add notifications to appear a=
t the
> top of the page across the entire site. This is useful in the case where =
there
> is some problem with the update process or maintenance is going on as hap=
pens
> from time to time.
>
> * Bootstrap 3 - the UI has been updated to use Bootstrap 3 from version 2=
 that
> we were using previously. This has made a fairly minor difference to the =
UI
> (padding/spacing/fonts have changed a little) but has allowed us to tidy =
up a
> few things in the code.
>
> * The "Base" layer type is no longer selectable for layer submissions. I
> noticed people sometimes selected this erroneously; it's only applicable =
for
> openembedded-core and meta-oe basically so that they show up at the top o=
f the
> layer list. Only admins can now select this type for a layer.
>
> * Numerous other bugfixes, robustness improvements and code cleanups.
>
> Thanks very much to everyone who has contributed to the layer index code =
up to
> now (and to BitBake / tinfoil, which we rely upon to extract the informat=
ion
> from the metadata), but I'd like to give particular thanks to Michael
> Halstead, Yi Zhao, Konrad Scherer, Robert Yang and An=C3=ADbal Lim=C3=B3n=
 for making
> this upgrade possible.
>
>
> Also integrated were the Recipe Reporting System (RRS) which powers
> http://recipes.yoctoproject.org and other distro comparison support, but =
these
> will take a bit more time to properly enable so I'll send out a separate =
email
> with further details when they are ready.
>
> As always, please let me know if you have any comments or notice any issu=
es.
> (I've already seen a few minor problems in the update logs so I'll be loo=
king
> into those.)
>
> Cheers,
> Paul
>
As daily user of layerindex I think particularly the first three
features are very helpful. Thanks a lot!

Andreas

