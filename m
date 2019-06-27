Return-Path: <daniel.wenninger92@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 402BEE00C7D; Thu, 27 Jun 2019 00:34:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (daniel.wenninger92[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 964BDE00BD5
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 00:34:12 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id j19so1311067otq.2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 00:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=+th7A2x8+mrOs8GKOtPONMocIkcU2D0ktW38COo1QS0=;
	b=bYhW6iUvAN6MXtWJLZrr0unUsvF0r56LDyxUX9PAU1z/+dj1MoKWiiRcTI1I9zFPS5
	A2JObgb3vX19hlbXoU23hwoxPHnWOFJJEawOnxs2uowgJMOym0t7hcxXPNEuj2DhFFjI
	dL56JX2cKcCeduayT1gEyXWzvQbqtxIgFl3zEQwhccq8oGvD5HuTrkXBQYUeLEf+VJUD
	JVc1FlP+1skurHYh8g3Nf2Kblzr6pOoZgBTHIx7dTFINAuXdgVjRm1pOTFoPK+PvDg5Z
	udNrt21VeqsdP92A8Qe9pN9nyqonVDHu2zBInj90hfhIjKCdgo7hpbk21WhlBNwViRQP
	HRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=+th7A2x8+mrOs8GKOtPONMocIkcU2D0ktW38COo1QS0=;
	b=UL4mJSh2ykIC/ttLa7HgUNJzd8Y5RpLE0R5OSmHWBt58knX1e6AHPE7isK9UEBgKhw
	+6KlI2pARsZD9E7yb7I7Gb6nxQPXi+B8rr0/Zl3I650keYnRqOVa2yyco1hUVULk7tbt
	wdUrEwXD7qDy0+SyA3HjJRT5A786JawBqnEUxo8OHs0kbm9uSlPcOI1oB4Rur2MIdJR5
	l6QJtZZt72iBWEeo34jMBwnJOs7KkW5L6zyRfnjE0qdg00tuPy/nP1aA93nJ3zKwf4tT
	4x7rk4IXs7/FXToyhYHCpeojZvB/JUNukKLnktEmu5bVYf+qbWwL/8eBmBHPkCb3/v3J
	whvg==
X-Gm-Message-State: APjAAAVc98X1p6LDnjpEN0H4i2dh8/LVkZ7OuHM+W2zwSgrXSgaUmCoL
	jHVLJ+NKBWgGYUN3TfSKpNSbZhLfTKUDUKZ1/nFwRztG
X-Google-Smtp-Source: APXvYqxwHmBPwk09y3jPAKS4WKH4JwnHglZBM0jiJ0EllPN5/nb1+vAKSq2vmbycVhutOajUZATRM5ffm2duBRD+eKU=
X-Received: by 2002:a05:6830:1596:: with SMTP id
	i22mr2185242otr.93.1561620851972; 
	Thu, 27 Jun 2019 00:34:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAEmXcAxcyTEv0tqmGrT9RyFch2ZxZWpAti5ssnh0+P0zTR9tqQ@mail.gmail.com>
	<c13e6f65-72e7-aeda-c731-79b44b219a5a@windriver.com>
In-Reply-To: <c13e6f65-72e7-aeda-c731-79b44b219a5a@windriver.com>
From: danwe <daniel.wenninger92@gmail.com>
Date: Thu, 27 Jun 2019 09:34:01 +0200
Message-ID: <CAEmXcAxJsF6JNBkh8SDF5MzoUp_igiHmNDAyoW+EGvuGz9sGuw@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>, yocto@yoctoproject.org
Subject: Re: bitbak command: No recipe available for
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
X-List-Received-Date: Thu, 27 Jun 2019 07:34:13 -0000
Content-Type: multipart/alternative; boundary="00000000000027dfd2058c4930c0"

--00000000000027dfd2058c4930c0
Content-Type: text/plain; charset="UTF-8"

Hi,

thank you very much. So now I don't get errors but warnings. So for what do
I need those .bbappend files? Are you sure there will be no problems later?

Thanks.

Daniel

Am Do., 27. Juni 2019 um 09:18 Uhr schrieb ChenQi <Qi.Chen@windriver.com>:

> Set the following in some conf file, e.g. distro.conf, local.conf.
> BB_DANGLINGAPPENDS_WARNONLY = "true"
>
> Best Regards,
> Chen Qi
>
> On 06/27/2019 02:31 PM, danwe wrote:
>
> while using the command:
> daniel@daniel-VirtualBox:~/bbb$ MACHINE=beaglebone bitbake
> core-immage-full cmdline I get the following ouput:
> ````
>
> Loading cache: 100% |############################################| Time:
> 0:00:03
>
> Loaded 1358 entries from dependency cache.
>
> Parsing recipes: 100% |##########################################| Time:
> 0:00:12
>
> Parsing of 832 .bb files complete (829 cached, 3 parsed). 1361 targets, 65
> skipped, 0 masked, 0 errors.
>
> ERROR: No recipes available for:
>
>   /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.%.bbappend
>
>   /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend
>
>   /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend
>
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> ````
>
> How can I solve this?
>
> Thanks.
>
> Daniel
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000027dfd2058c4930c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>thank you very much. So now I don&#=
39;t get errors but warnings. So for what do I need those .bbappend files? =
Are you sure there will be no problems later?</div><div><br></div><div>Than=
ks.</div><div><br></div><div>Daniel</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">Am Do., 27. Juni 2019 um 09:18=C2=
=A0Uhr schrieb ChenQi &lt;<a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@=
windriver.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_5379493640264622532moz-cite-prefix">Set the follo=
wing in some conf file,
      e.g. distro.conf, local.conf.<br>
      BB_DANGLINGAPPENDS_WARNONLY =3D &quot;true&quot;<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 06/27/2019 02:31 PM, danwe wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>while using the command:=C2=A0</div>
        <div>daniel@daniel-VirtualBox:~/bbb$ MACHINE=3Dbeaglebone bitbake
          core-immage-full cmdline I get the following ouput:</div>
        <div>````</div>
        <div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">Loading cache: 100%
              |############################################| Time:
              0:00:03</span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">Loaded 1358 entries
              from dependency cache.</span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">Parsing recipes: 100%
              |##########################################| Time: 0:00:12</s=
pan></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">Parsing of 832 .bb
              files complete (829 cached, 3 parsed). 1361 targets, 65
              skipped, 0 masked, 0 errors.</span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: No recipes
              available for:</span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0
              /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.=
%.bbappend</span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0
              /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend</spa=
n></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0
              /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend<=
/span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span></p>
          <p class=3D"MsoNormal"><span lang=3D"EN-US">Summary: There was 1
              ERROR message shown, returning a non-zero exit code.</span></=
p>
        </div>
        <div>````</div>
        <div><br>
        </div>
        <div>How can I solve this?</div>
        <div><br>
        </div>
        <div>Thanks.</div>
        <div><br>
        </div>
        <div>Daniel</div>
      </div>
      <br>
      <fieldset class=3D"gmail-m_5379493640264622532mimeAttachmentHeader"><=
/fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000027dfd2058c4930c0--
