Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDF7DE00B43; Tue, 14 May 2019 11:23:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E262E00A0C
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 11:23:14 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id v10so12902033oib.1
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 11:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=VguRh7nueQs3o3/FIomPF8ilEs06W2FOuyhSOErwPOk=;
	b=C+7rPQdcwdVdx9XA0fD5Kf8TccTK++LKmdxXoqpglfktvT2+joS/WnTMNrogsYKLHg
	2O46pFNNcKcSHn6S9tk+0811C5wjJuREpnkSDhrcA1arO4c6jI+CwZZ5lHR/NN3Cm/Lo
	N0c2w1o4q+TAFBsWv0slUTH6pU7tRpWPJZoXvJxkLXVS0dTS7v5n8mYO+BXlGTHqoOkT
	k+ZdBu6ssjdNSM5G2UUtSewZpm87s2BAmS7FoEoyMNGKOWnRJeBd5RFh/0QdYl10Au8P
	yGkOCFvIy+fz6nSI6oktep0T8lYOzsS+D1rjciwfn1YRDNk2Ve1LJsFjh+kfoa+eS9y5
	sChA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=VguRh7nueQs3o3/FIomPF8ilEs06W2FOuyhSOErwPOk=;
	b=HSDtoL79lJDVl5tZVCg/T4DkTJZ7u5Br0DoMMyKuU5a8/oG8DtLtHY7F2Ayxe9/Z1R
	chYQpQm4Z2kCvw1T/EdhndBGKDvF0Xq7GcKx2pVOUhpQxTgOR7vookCnDAu5FMAWGYUH
	fKgt8/6ZkeeuXLGFe5o7KHqXqafhAU72JO/eh7fg/PMShgcgTUgOAPBn2XzWH/Lm764K
	2kw6SxL04Xix8KCbjNngnl5jNOSeITApX8fhsjxKvTxAblJwVEs3hQMpNQb0uGEa/Ibd
	8pq4uwRsrDcPrtXCZhWPGl/+BiK1vrSnGUHcb5LJ8zKDQ0JS3H38Dtl29HDC7VvNXdX5
	XwYw==
X-Gm-Message-State: APjAAAVxB3X7pv39yH9vqooOoJJN3XMrsfTb0lfVgXgYBHLkTV0EUfSk
	LyRXNs0QFSgpG3H3GqW6Rg4CWeBPw7sJ8buKhzcd3w==
X-Google-Smtp-Source: APXvYqyDjOCObvQWZynFQjoFu2OC99Y1waf8TD67D8qRWPICF65gUym7lD2O+iXgGrkyTNs816WaxMsyIxpk/u0gWpQ=
X-Received: by 2002:aca:50d3:: with SMTP id e202mr3838513oib.88.1557858193482; 
	Tue, 14 May 2019 11:23:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAFSZm+j8cBQ6SxD=VsuUWc1+JCvGe6asJpCgjhe=Bp+r5XPLPw@mail.gmail.com>
	<CAFSZm+jm1dh6JZwXgxRiTpXutRNJD3+BxzxzLAP3O6YYHcV_hw@mail.gmail.com>
	<CAFSZm+hTjnO1h4o24M+Ym9gRELB0jzd5SDp_ejbfMcxVCfqGmg@mail.gmail.com>
In-Reply-To: <CAFSZm+hTjnO1h4o24M+Ym9gRELB0jzd5SDp_ejbfMcxVCfqGmg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 14 May 2019 20:23:01 +0200
Message-ID: <CANNYZj_FXoN1dngu4+m8yjZRJ3PHYExLQ7_jjpWjq9GOdjEFhw@mail.gmail.com>
To: Aaron Cohen <aaron@assonance.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: python-numpy RDEPENDS not honored?
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
X-List-Received-Date: Tue, 14 May 2019 18:23:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Basically if you make a patch for the numpy recipe to address this,
and post it to oe-core list, everyone would appreciate :)

Alex

On Tue, 14 May 2019 at 20:16, Aaron Cohen <aaron@assonance.org> wrote:
>
> Is there a place I should post this that would get more attention?
>
> On Thu, May 9, 2019 at 4:48 PM Aaron Cohen <aaron@assonance.org> wrote:
>>
>> I think the problem is in the python-numpy_1.14.5.bb recipe.
>>
>> It does: RDEPENDS_${PN}_class-target_append =3D ...
>>
>> where it seems to need to be: RDEPENDS_${PN}_append_class-target =3D ...
>>
>> Note the position of the word append.
>>
>> If someone wanted to point me in the right direction, I could try to mak=
e a qa task that would discover this sort of error if it seems feasible?
>>
>> --Aaron
>>
>>
>> On Thu, May 9, 2019 at 4:15 PM Aaron Cohen <aaron@assonance.org> wrote:
>>>
>>> python-numpy is being installed on my image as a dependency of one of m=
y packages.
>>>
>>> However, none of python-numpy's RDEPENDS are currently being included o=
n the image.
>>>
>>> When I run bitbake -e python-numpy > numpy.txt, I see that for some rea=
son, the RDEPENDS is being overridden to a nearly empty value:
>>>
>>>> # $RDEPENDS_python-numpy [5 operations]
>>>> #   append /home/joel-cohen/code/juevos/poky/meta/classes/distutils-ba=
se.bbclass:2
>>>> #     "${@['', '${PYTHON_PN}-core']['${CLASSOVERRIDE}' =3D=3D 'class-t=
arget']}"
>>>> #   set /home/joel-cohen/code/juevos/poky/meta/recipes-devtools/python=
-numpy/python-numpy.inc:112
>>>> #     "${PYTHON_PN}-unittest                   ${PYTHON_PN}-difflib   =
                ${PYTHON_PN}-pprint                   ${PYTHON_PN}-pickle  =
                 ${PYTHON_PN}-shell                   ${PYTHON_PN}-nose    =
               ${PYTHON_PN}-doctest                   ${PYTHON_PN}-datetime=
                   ${PYTHON_PN}-distutils                   ${PYTHON_PN}-mi=
sc                   ${PYTHON_PN}-mmap                   ${PYTHON_PN}-netcl=
ient                   ${PYTHON_PN}-numbers                   ${PYTHON_PN}-=
pydoc                   ${PYTHON_PN}-pkgutil                   ${PYTHON_PN}=
-email                   ${PYTHON_PN}-compression                   ${PYTHO=
N_PN}-ctypes                   ${PYTHON_PN}-threading "
>>>> #   rename from RDEPENDS_${PN} data.py:117 [expandKeys]
>>>> #     "${PYTHON_PN}-unittest                   ${PYTHON_PN}-difflib   =
                ${PYTHON_PN}-pprint                   ${PYTHON_PN}-pickle  =
                 ${PYTHON_PN}-shell                   ${PYTHON_PN}-nose    =
               ${PYTHON_PN}-doctest                   ${PYTHON_PN}-datetime=
                   ${PYTHON_PN}-distutils                   ${PYTHON_PN}-mi=
sc                   ${PYTHON_PN}-mmap                   ${PYTHON_PN}-netcl=
ient                   ${PYTHON_PN}-numbers                   ${PYTHON_PN}-=
pydoc                   ${PYTHON_PN}-pkgutil                   ${PYTHON_PN}=
-email                   ${PYTHON_PN}-compression                   ${PYTHO=
N_PN}-ctypes                   ${PYTHON_PN}-threading "
>>>> #   override[class-native]:set /home/joel-cohen/code/juevos/poky/meta/=
recipes-devtools/python-numpy/python-numpy.inc:114
>>>> #     ""
>>>> #   override[class-native]:rename from RDEPENDS_${PN}_class-native dat=
a_smart.py:644 [renameVar]
>>>> #     ""
>>>> # pre-expansion value:
>>>> #   "     ${PYTHON_PN}-subprocess "
>>>> RDEPENDS_python-numpy=3D"     python-subprocess "
>>>
>>>
>>>
>>> Anyone have any ideas for why this recipe doesn't seem to be behaving c=
orrectly?
>>>
>>> I'm using poky 2.6 at the moment.
>>>
>>> Thanks for any help,
>>> Aaron
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

