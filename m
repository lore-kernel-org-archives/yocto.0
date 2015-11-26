Return-Path: <dariusz.pelowski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B155E00855; Thu, 26 Nov 2015 11:10:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dariusz.pelowski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 447D5E00343
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 11:10:29 -0800 (PST)
Received: by lfdl133 with SMTP id l133so106384432lfd.2
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 11:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=03YItwZ9tNNfNN91WViUbcQMWLkKGLXHkxaYo1NS5Ws=;
	b=hf8HGyJVDDsF6Y0RAjVJDIVtNBu/zlYAmV4dkArabkryhvOnO+Lr+Ar3iK75877Gw6
	3laU5ZBlO1p8uIOFz3/TUFgeMZnDHdT/ronaF2vwHVjbpLBy/7JR/eXj2Bxjg4B202dd
	vVqd/NR5/KGaPIJBy+fGRh0/lQBfhRY84A9fbkggAURsGSPbFvIJ6uYTd+jUR0QpHFQy
	ewXetCR8fzhNMVIY99cdSchtbhZmVRi/xcZbymeARE68OUVxI1F73NZ9uuhcnp1Y+LBP
	uC6U1TaMn5gn30WVOgi91RhMZlfs7joHfV5JdN8hZbDYQcTKPwUTxA2+MB+aAvE1ZLXD
	V7Sg==
X-Received: by 10.112.172.231 with SMTP id bf7mr11402587lbc.5.1448565028661;
	Thu, 26 Nov 2015 11:10:28 -0800 (PST)
Received: from [192.168.1.195] (user-5-173-122-149.play-internet.pl.
	[5.173.122.149]) by smtp.googlemail.com with ESMTPSA id
	zm10sm4346805lbb.49.2015.11.26.11.10.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 26 Nov 2015 11:10:28 -0800 (PST)
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>,
	yocto@yoctoproject.org
References: <CAJ73Ay5nUUdU7BO2dQQF0ToEiuzX1cxd6nMWHvtZmoHfu32X_Q@mail.gmail.com>
	<56574564.7030909@linux.intel.com>
From: Dariusz Pelowski <dariusz.pelowski@gmail.com>
Message-ID: <56575922.904@gmail.com>
Date: Thu, 26 Nov 2015 20:10:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <56574564.7030909@linux.intel.com>
Subject: Re: Failing devshell
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
X-List-Received-Date: Thu, 26 Nov 2015 19:10:31 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


> A less intrusive change would be to check if the output of the 
> --version command contains the word 'GNOME' (either using the 'in' 
> build-in operation or string.find). This is done in the same function 
> you modified in your previous patch.
>
>

Greping gnome-terminal translations we can find that word "GNOME" 
doesn't exists in all languages:
am.po:msgid "GNOME Terminal"
am.po-msgstr "የኖም ተርሚናል"
--
ar.po:msgid "GNOME Terminal"
ar.po-msgstr "طرفيّة جنوم"
--
dz.po:msgid "GNOME Terminal"
dz.po-msgstr "ཇི་ནོམ་ ཊར་མི་ནཱལ་།"
--
en@shaw.po:msgid "GNOME Terminal"
en@shaw.po-msgstr "·𐑜𐑯𐑴𐑥 𐑑𐑻𐑥𐑦𐑯𐑩𐑤"
--
fa.po:msgid "GNOME Terminal"
fa.po-msgstr "پایانه‌ی گنوم"
--
fi.po:msgid "GNOME Terminal"
fi.po-msgstr "Gnomen pääte"
--
hi.po:msgid "GNOME Terminal"
hi.po-msgstr "गनोम टर्मिनल"
--
hy.po:msgid "GNOME Terminal"
hy.po-msgstr "ԳՆՈՄ Տերմինալ"
--
ka.po:msgid "GNOME Terminal"
ka.po-msgstr "გნომ ტერმინალი"
--
ko.po:msgid "GNOME Terminal"
ko.po-msgstr "그놈 터미널"
--
mai.po:msgid "GNOME Terminal"
mai.po-msgstr "गनोम टर्मिनल"
--
ml.po:msgid "GNOME Terminal"
ml.po-msgstr "ഗ്നോം ടെര്‍മിനല്‍"
--
mn.po:msgid "GNOME Terminal"
mn.po-msgstr "ГНОМЕ-Терминал"
--
ne.po:msgid "GNOME Terminal"
ne.po-msgstr "जिनोम टर्मिनल"
--
ps.po:msgid "GNOME Terminal"
ps.po-msgstr "جنومي پايالی"
--
rw.po:msgid "GNOME Terminal"
rw.po-msgstr ""
--
si.po:msgid "GNOME Terminal"
si.po-msgstr "ග්නෝම් අග්‍රය"
--
sr.po:msgid "GNOME Terminal"
sr.po-msgstr "Гномов терминал"
--
sr@latin.po:msgid "GNOME Terminal"
sr@latin.po-msgstr "Gnomov terminal"
--
ta.po:msgid "GNOME Terminal"
ta.po-msgstr "கனோம் முனையம்"
--
te.po:msgid "GNOME Terminal"
te.po-msgstr "గ్నోమ్ టెర్మినల్"
--
ug.po:msgid "GNOME Terminal"
ug.po-msgstr "گىنوم تېرمىنال"

Can we stay with setting default locale?

Thanks,
Dariusz


