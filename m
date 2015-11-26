Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62FF3E00855; Thu, 26 Nov 2015 11:30:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA861E00343
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 11:30:41 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 26 Nov 2015 11:30:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,347,1444719600"; d="scan'208";a="695051909"
Received: from lsandov1-mob1-linux.zpn.intel.com (HELO [10.219.5.40])
	([10.219.5.40])
	by orsmga003.jf.intel.com with ESMTP; 26 Nov 2015 11:30:21 -0800
To: Dariusz Pelowski <dariusz.pelowski@gmail.com>, yocto@yoctoproject.org
References: <CAJ73Ay5nUUdU7BO2dQQF0ToEiuzX1cxd6nMWHvtZmoHfu32X_Q@mail.gmail.com>
	<56574564.7030909@linux.intel.com> <56575922.904@gmail.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <56575E79.3050904@linux.intel.com>
Date: Thu, 26 Nov 2015 13:33:13 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <56575922.904@gmail.com>
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
X-List-Received-Date: Thu, 26 Nov 2015 19:30:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

You are right. have you done some testing in non-gnome terminals using 
your patch?

On 11/26/2015 01:10 PM, Dariusz Pelowski wrote:
>
>> A less intrusive change would be to check if the output of the 
>> --version command contains the word 'GNOME' (either using the 'in' 
>> build-in operation or string.find). This is done in the same function 
>> you modified in your previous patch.
>>
>>
>
> Greping gnome-terminal translations we can find that word "GNOME" 
> doesn't exists in all languages:
> am.po:msgid "GNOME Terminal"
> am.po-msgstr "የኖም ተርሚናል"
> -- 
> ar.po:msgid "GNOME Terminal"
> ar.po-msgstr "طرفيّة جنوم"
> -- 
> dz.po:msgid "GNOME Terminal"
> dz.po-msgstr "ཇི་ནོམ་ ཊར་མི་ནཱལ་།"
> -- 
> en@shaw.po:msgid "GNOME Terminal"
> en@shaw.po-msgstr "·𐑜𐑯𐑴𐑥 𐑑𐑻𐑥𐑦𐑯𐑩𐑤"
> -- 
> fa.po:msgid "GNOME Terminal"
> fa.po-msgstr "پایانه‌ی گنوم"
> -- 
> fi.po:msgid "GNOME Terminal"
> fi.po-msgstr "Gnomen pääte"
> -- 
> hi.po:msgid "GNOME Terminal"
> hi.po-msgstr "गनोम टर्मिनल"
> -- 
> hy.po:msgid "GNOME Terminal"
> hy.po-msgstr "ԳՆՈՄ Տերմինալ"
> -- 
> ka.po:msgid "GNOME Terminal"
> ka.po-msgstr "გნომ ტერმინალი"
> -- 
> ko.po:msgid "GNOME Terminal"
> ko.po-msgstr "그놈 터미널"
> -- 
> mai.po:msgid "GNOME Terminal"
> mai.po-msgstr "गनोम टर्मिनल"
> -- 
> ml.po:msgid "GNOME Terminal"
> ml.po-msgstr "ഗ്നോം ടെര്‍മിനല്‍"
> -- 
> mn.po:msgid "GNOME Terminal"
> mn.po-msgstr "ГНОМЕ-Терминал"
> -- 
> ne.po:msgid "GNOME Terminal"
> ne.po-msgstr "जिनोम टर्मिनल"
> -- 
> ps.po:msgid "GNOME Terminal"
> ps.po-msgstr "جنومي پايالی"
> -- 
> rw.po:msgid "GNOME Terminal"
> rw.po-msgstr ""
> -- 
> si.po:msgid "GNOME Terminal"
> si.po-msgstr "ග්නෝම් අග්‍රය"
> -- 
> sr.po:msgid "GNOME Terminal"
> sr.po-msgstr "Гномов терминал"
> -- 
> sr@latin.po:msgid "GNOME Terminal"
> sr@latin.po-msgstr "Gnomov terminal"
> -- 
> ta.po:msgid "GNOME Terminal"
> ta.po-msgstr "கனோம் முனையம்"
> -- 
> te.po:msgid "GNOME Terminal"
> te.po-msgstr "గ్నోమ్ టెర్మినల్"
> -- 
> ug.po:msgid "GNOME Terminal"
> ug.po-msgstr "گىنوم تېرمىنال"
>
> Can we stay with setting default locale?
>
> Thanks,
> Dariusz
>


