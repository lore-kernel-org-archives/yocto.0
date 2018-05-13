Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B9F3E013C7; Sun, 13 May 2018 12:56:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f180.google.com (mail-ot0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 460DEE009E2
	for <yocto@yoctoproject.org>; Sun, 13 May 2018 12:56:35 -0700 (PDT)
Received: by mail-ot0-f180.google.com with SMTP id n3-v6so11994265ota.5
	for <yocto@yoctoproject.org>; Sun, 13 May 2018 12:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=L6yyD90RtYL4YRFQDegbuG7nA0KtF+qr6BVyanQ+cQA=;
	b=kkJK3vQa8vq6Yz5ZnpjFGklk6/TvtuL0Jdr/bjc6fH6hH++7bo99G55gYzRMgSz3kX
	HFjZP3L63N/9CAyx7aaiervOHBapA624YVeGlJoWUBMv4oW4+snXxWDZwQRAaUJ4qXxi
	d/8dcIB+yFrTVsJjJDFWIq+qyR2g+gBtq1Knu8LI12+7ZIf0BxVm7eaBs69Kzm0Pzb9s
	7YblZzFdTRXPGaln//GfAm1tRpi3C2hAAKa8Nwi4G6WTTLFyYXHpTvSwCRvluigucn7r
	i2BzkxKuueSnU6wix07ZBjLBM5S+SkXvy2xzkT4Dv848PK7vaiEUSPkgcnPOO6kM6hQO
	riQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=L6yyD90RtYL4YRFQDegbuG7nA0KtF+qr6BVyanQ+cQA=;
	b=DVZWP2IuXLHy0M23Ip20DF4nBjyfzy3LmNqNVJu36uoU2HUZveX9gIVdhar1sxz01C
	QiLSlO6cbtcrDQ/XcLHw653DyUp9HMHDCXSO77fSx0z1nQ6kOejLrPVTJuW8c13a+uF/
	YXRs4v8nifgyLX5zCSnOjCpCyuPgRqXsbr6FShb7pC2VocT0Qr4IwqkwuZn+VSR5pgZE
	Ce8lQHZ3P0nPpN5zeyf7k/dJ+G66oShU41iTi79wsYr/V1+jju/NogOXmJiCrJLUrZxE
	ajqQy496Os0ioNAommk4vcFu4ZPL+VMrn1kaT9tZY27B+0mZ3jkJCMPaTK49cjDKruYv
	ZGjw==
X-Gm-Message-State: ALKqPwe0JhQGus8GniyoY2cUNXKFDy75JLSg+94QKSRJH7V7FOP8ZnpI
	58I41ipRkYEBJ8TMn2nUtKj9EWv3wmQbhkbJdtA=
X-Google-Smtp-Source: AB8JxZq0qUAQ9Vtt7YW2kqDM0zKt+WZH6eyRFDc7nsQoU7tDEalvd/w7pyLlvRE61UsCgiCZHfX+qtn/gYRfvwVdxmc=
X-Received: by 2002:a9d:fad:: with SMTP id
	d42-v6mr4824341otd.358.1526241395309; 
	Sun, 13 May 2018 12:56:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7009:0:0:0:0:0 with HTTP; Sun, 13 May 2018 12:56:34
	-0700 (PDT)
In-Reply-To: <b5ac251e-075e-e07a-eab0-272b5433bb03@windriver.com>
References: <44454e21-7c6f-8337-f7e3-caf4674052f4@phoenixcontact.com>
	<b5ac251e-075e-e07a-eab0-272b5433bb03@windriver.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Sun, 13 May 2018 12:56:34 -0700
Message-ID: <CAFNP8OuSgMyN0P5tvLhks28q3m59wbT+Ks7TFDT-YcDgH+pArg@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Excluding ptest packages from image build
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
X-List-Received-Date: Sun, 13 May 2018 19:56:38 -0000
Content-Type: multipart/alternative; boundary="00000000000035817b056c1bc448"

--00000000000035817b056c1bc448
Content-Type: text/plain; charset="UTF-8"

If we set up a bug on this.... Be sure to include the explanation about the
misleading doc entry for that variable as well.  There would be a definite
documentation component to the bug.

Thanks,
Scott

On Wed, May 9, 2018 at 10:34 PM, ChenQi <Qi.Chen@windriver.com> wrote:

> I just checked the codes. I think the ref manual might be a little
> misleading.
> "Prevents specific packages from being installed when you are installing
> complementary packages. "
> might better be changed to:
> "Prevents specific packages to install their complementary packages. Items
> specified by this variable are considered as regular expression."
> Maybe an example should follow.
>
> So specifying value 'acl' for PACKAGE_EXCLUDE_COMPLEMENTARY should be
> valid and its complementary packages should not be installed. Specifying
> 'acl.*' should have the same effect, but 'acl.' should not.
>
> Anyway, I think you should file a bug with steps to reproduce the problem.
>
> Also, I found that we currently don't have a mechanism to exclude some
> specific complementary package (e.g. acl-ptest in your case). We might need
> to reconsider what PACKAGE_EXCLUDE should mean.
> More specifically, if a user requires *-ptest packages in general, but
> wants to exclude acl-ptest package, there's no easy way to do so.
>
> Best Regards,
> Chen Qi
>
> On 05/09/2018 11:30 PM, Erik Nellessen wrote:
>
>> I would like to exclude some ptest packages from an image build.
>>
>> To include ptest packages in general, my image recipe contains the
>> following line:
>> IMAGE_FEATURES_append = " ptest-pkgs"
>>
>> As a first step, I tried to exclude the acl-ptest package. To do so, I
>> added the following to my image recipe:
>> PACKAGE_EXCLUDE_COMPLEMENTARY = "acl-ptest"
>>
>> I thought that this would exclude the acl-ptest package as described in
>> the project reference: https://www.yoctoproject.org/d
>> ocs/2.4.2/ref-manual/ref-manual.html#var-PACKAGE_EXCLUDE_COMPLEMENTARY
>> "Prevents specific packages from being installed when you are installing
>> complementary packages.
>>
>> You might find that you want to prevent installing certain packages when
>> you are installing complementary packages. For example, if you are using
>> IMAGE_FEATURES to install dev-pkgs, you might not want to install all
>> packages from a particular multilib. If you find yourself in this
>> situation, you can use the PACKAGE_EXCLUDE_COMPLEMENTARY variable to
>> specify regular expressions to match the packages you want to exclude."
>>
>> Anyhow this did not result in an image without the acl-ptest package, as
>> I could validate by having a look at the image's manifest file.
>>
>> When I changed the image recipe to contain the regular expression "acl",
>> i.e
>> PACKAGE_EXCLUDE_COMPLEMENTARY = "acl"
>> all three acl packages (acl, acl-lic, acl-ptest) were excluded from the
>> image.
>>
>> And to really start the confusion, when changed the regular expression to
>> "acl.", i.e.
>> PACKAGE_EXCLUDE_COMPLEMENTARY = "acl."
>> all three packages were also excluded.
>>
>> Now I am really confused. My expectation was that "acl-ptest" and "acl"
>> would match the acl-ptest package name and "acl." would not match the acl
>> package name.
>>
>> Does anybody see what I am missing here?
>>
>> Thanks in advance,
>> Erik
>>
>>
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000035817b056c1bc448
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>If we set up a bug on this.... Be sure to i=
nclude the explanation about the misleading doc entry for that variable as =
well.=C2=A0 There would be a definite documentation component to the bug. <=
br></div><br></div>Thanks, <br></div>Scott<br></div><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">On Wed, May 9, 2018 at 10:34 PM, ChenQi =
<span dir=3D"ltr">&lt;<a href=3D"mailto:Qi.Chen@windriver.com" target=3D"_b=
lank">Qi.Chen@windriver.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">I just checked the codes. I think the ref manual might be a little=
 misleading.<br>
&quot;Prevents specific packages from being installed when you are installi=
ng complementary packages. &quot;<br>
might better be changed to:<br>
&quot;Prevents specific packages to install their complementary packages. I=
tems specified by this variable are considered as regular expression.&quot;=
<br>
Maybe an example should follow.<br>
<br>
So specifying value &#39;acl&#39; for PACKAGE_EXCLUDE_COMPLEMENTARY should =
be valid and its complementary packages should not be installed. Specifying=
 &#39;acl.*&#39; should have the same effect, but &#39;acl.&#39; should not=
.<br>
<br>
Anyway, I think you should file a bug with steps to reproduce the problem.<=
br>
<br>
Also, I found that we currently don&#39;t have a mechanism to exclude some =
specific complementary package (e.g. acl-ptest in your case). We might need=
 to reconsider what PACKAGE_EXCLUDE should mean.<br>
More specifically, if a user requires *-ptest packages in general, but want=
s to exclude acl-ptest package, there&#39;s no easy way to do so.<br>
<br>
Best Regards,<br>
Chen Qi<br>
<br>
On 05/09/2018 11:30 PM, Erik Nellessen wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I would like to exclude some ptest packages from an image build.<br>
<br>
To include ptest packages in general, my image recipe contains the followin=
g line:<br>
IMAGE_FEATURES_append =3D &quot; ptest-pkgs&quot;<br>
<br>
As a first step, I tried to exclude the acl-ptest package. To do so, I adde=
d the following to my image recipe:<br>
PACKAGE_EXCLUDE_COMPLEMENTARY =3D &quot;acl-ptest&quot;<br>
<br>
I thought that this would exclude the acl-ptest package as described in the=
 project reference: <a href=3D"https://www.yoctoproject.org/docs/2.4.2/ref-=
manual/ref-manual.html#var-PACKAGE_EXCLUDE_COMPLEMENTARY" rel=3D"noreferrer=
" target=3D"_blank">https://www.yoctoproject.org/d<wbr>ocs/2.4.2/ref-manual=
/ref-manua<wbr>l.html#var-PACKAGE_EXCLUDE_<wbr>COMPLEMENTARY</a><br>
&quot;Prevents specific packages from being installed when you are installi=
ng complementary packages.<br>
<br>
You might find that you want to prevent installing certain packages when yo=
u are installing complementary packages. For example, if you are using IMAG=
E_FEATURES to install dev-pkgs, you might not want to install all packages =
from a particular multilib. If you find yourself in this situation, you can=
 use the PACKAGE_EXCLUDE_COMPLEMENTARY variable to specify regular expressi=
ons to match the packages you want to exclude.&quot;<br>
<br>
Anyhow this did not result in an image without the acl-ptest package, as I =
could validate by having a look at the image&#39;s manifest file.<br>
<br>
When I changed the image recipe to contain the regular expression &quot;acl=
&quot;, i.e<br>
PACKAGE_EXCLUDE_COMPLEMENTARY =3D &quot;acl&quot;<br>
all three acl packages (acl, acl-lic, acl-ptest) were excluded from the ima=
ge.<br>
<br>
And to really start the confusion, when changed the regular expression to &=
quot;acl.&quot;, i.e.<br>
PACKAGE_EXCLUDE_COMPLEMENTARY =3D &quot;acl.&quot;<br>
all three packages were also excluded.<br>
<br>
Now I am really confused. My expectation was that &quot;acl-ptest&quot; and=
 &quot;acl&quot; would match the acl-ptest package name and &quot;acl.&quot=
; would not match the acl package name.<br>
<br>
Does anybody see what I am missing here?<br>
<br>
Thanks in advance,<br>
Erik<br>
<br>
<br>
<br><span class=3D"HOEnZb"><font color=3D"#888888">
</font></span></blockquote><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--00000000000035817b056c1bc448--
