Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43FCBE00C6F; Sun, 23 Jun 2019 23:03:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48F4AE00AB4
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 23:03:25 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id v24so11301531ljg.13
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 23:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=hm84TlJvihCLogMTfT5r6KvK+pYjiesNZg6vHBsxCis=;
	b=MUq7RdwLc2Zmau4fWalWldFEEfX9/1XSjYb407EX0mC9Ka+Wcs+ssipwNhX7Z12PHK
	fQmNPkdZ8rUudZovUNxi3lNb7NoUc/wf9P1SN0d4EfcEPDcfV5CHzLHUrcufDgqN8aYw
	vgC9pSaSUw+RI+xxI8I0221GfIPDHdA83wTVqOe4lIoN29nLwIrjnnTmGyChTDebQWyE
	MOsuDKqzBEMzAC7anvRGViIICm8kqeBj+6HpC/pk4PeAl3nruoWp6Rb0XO1n5fp5u0+H
	IraciGTbpGY25sUdFOa6AnoRjnOFhOg7QusY59jXqLevXmMnLjgZKQaTOD/Dyj70Mm1a
	6dVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=hm84TlJvihCLogMTfT5r6KvK+pYjiesNZg6vHBsxCis=;
	b=JykMPQJJJpaMv3BgRnW6vu7xNB9o2xpDrcnEvXZ3EYC69PHUdcfWOPiNy3DnKhgEF/
	9peTdFqvYTDz/AdX6OU/JTszgepOn0RSeLzt38Z+g47O6mtTygCg+2vPXIOv1772ZPig
	uWbm9lZRCs5mcD1eoXT1QGKR9Pm1QahBTVkkn4FFE5n+37YeoW0dgi5yUDZvbGptSZFC
	MdHxSbpJQuRF1IVJ6X01T6kqKF+ZAmXbE8En85hmlER2AY5835bGGVCwnyqDv6vhX+V+
	Mkov0EvSPUySQP3tPagKiUi7L8bjRv2z92G6oh0CUeOxdroUSZ6EAU/fpdiaWlpDtfhB
	s6Ug==
X-Gm-Message-State: APjAAAVSg+O7UC4xRqaC7u85ojEcy8tOaeYEyGcMwuVOCGEk76usYYBV
	DYDYqkRdu9VAxaQNiepHNvb1IWBdMwIh+owpaAMCO/H5
X-Google-Smtp-Source: APXvYqz+QAD01AEp8axAdbSWDzhdjyITT9Dqfi63ZM4hsxltDhrlJkec0evjvXL6Bypr7mRdzVkvG16LbqpPaPV1r8U=
X-Received: by 2002:a2e:8945:: with SMTP id b5mr39277197ljk.93.1561356203703; 
	Sun, 23 Jun 2019 23:03:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaCUb18Yf6Qp33qQCu9O3s-qpa75uoSm+sKv89jR0FbZmQ@mail.gmail.com>
	<CAPxNcnfeBKEEn-fEW2evxd3O3uVxrFmuOJMb6quwZz=oGpXgYg@mail.gmail.com>
	<61eed6bb-10f6-e46a-7735-431934ace662@xunit.de>
In-Reply-To: <61eed6bb-10f6-e46a-7735-431934ace662@xunit.de>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 24 Jun 2019 08:03:12 +0200
Message-ID: <CAAx3WaA8RjrihHoWDhFQ_+hj=e=m-h495w8VsH7gE-3aqLcGuQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Running Yocto inside Docker
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
X-List-Received-Date: Mon, 24 Jun 2019 06:03:26 -0000
Content-Type: multipart/alternative; boundary="000000000000e3c1a3058c0b9124"

--000000000000e3c1a3058c0b9124
Content-Type: text/plain; charset="UTF-8"

Hi all,

thank you for your suggestions! I googled a bit more and found this guide:

https://docs.gitlab.com/ce/ci/ssh_keys/README.html#ssh-keys-when-using-the-docker-executor

That is exactly what I was looking for! In this way I can avoid storing
keys in the containers and feeding it only when the pipe is triggered.

Best regards,
Gabriele

Il giorno sab 22 giu 2019 alle ore 22:37 Benjamin <b@halonis.de> ha scritto:

> Hej,
>
> I use for this secret variables and store the access tokens or ssh keys in
> in one of this. A script running inside of the docker container uses sed
> magic for replacing string, when ever the direct usage of the secret
> variables is not possible. The ssh key is then written in a first step with
> something like
>
> echo "$SECRET_PRIVATE_SSH" > ~/.ssh/id_ecdsa && chmod 600 ~/.ssh/id_ecdsa
>
> gitlab will not print the secret variables in clear format.
>
> https://docs.gitlab.com/ee/ci/variables/#via-the-ui
>
> Whenever possible you should use a deploy token, best would be to add this
> as well as the above mentioned ui variables. With the protected feature you
> can even prevent non privileged developers from stealing this secrets.
>
>
> https://docs.gitlab.com/ee/user/project/deploy_tokens/#creating-a-deploy-token
>
>
> Am 17.06.19 um 20:00 schrieb Rudolf Streif:
>
> That's more of a Gitlab than Yocto question. I am doing this all the time
> with my GL server on AWS. You need to add deploy a key to the repo you want
> to access and then push the key to your Docker instance from gitlab-ci.yaml
> from the repo that you are using with GL CI.
>
> :rjs
>
> On Mon, Jun 17, 2019, 07:20 Gabriele Zampieri <gabbla.malist@gmail.com>
> wrote:
>
>> Hi all,
>>
>> does anyone have a guide on how to setup Yocto to run inside docker?
>> Right now I managed to trigger the build from GitLab, but I'm facing an
>> issue related to ssh keys (some recipes from my meta layer are hosted on a
>> privare repository). Probably this is not the best mailing list to ask this
>> kind of question, but it may worth a try.
>>
>> Thank you,
>> Gabriele
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000e3c1a3058c0b9124
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, <br></div><div><br></div><div>thank you for y=
our suggestions! I googled a bit more and found this guide:</div><div><br><=
/div><div><a href=3D"https://docs.gitlab.com/ce/ci/ssh_keys/README.html#ssh=
-keys-when-using-the-docker-executor">https://docs.gitlab.com/ce/ci/ssh_key=
s/README.html#ssh-keys-when-using-the-docker-executor</a></div><div><br></d=
iv><div>That is exactly what I was looking for! In this way I can avoid sto=
ring keys in the containers and feeding it only when the pipe is triggered.=
</div><div><br></div><div>Best regards, <br></div><div>Gabriele<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il=
 giorno sab 22 giu 2019 alle ore 22:37 Benjamin &lt;<a href=3D"mailto:b@hal=
onis.de">b@halonis.de</a>&gt; ha scritto:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Hej,</p>
    <p>I use for this secret variables and store the access tokens or
      ssh keys in in one of this. A script running inside of the docker
      container uses sed magic for replacing string, when ever the
      direct usage of the secret variables is not possible. The ssh key
      is then written in a first step with something like</p>
    <p>echo &quot;$SECRET_PRIVATE_SSH&quot; &gt; ~/.ssh/id_ecdsa &amp;&amp;=
 chmod
      600 ~/.ssh/id_ecdsa</p>
    <p>gitlab will not print the secret variables in clear format.</p>
    <p><a class=3D"gmail-m_885937086432005684moz-txt-link-freetext" href=3D=
"https://docs.gitlab.com/ee/ci/variables/#via-the-ui" target=3D"_blank">htt=
ps://docs.gitlab.com/ee/ci/variables/#via-the-ui</a></p>
    <p>Whenever possible you should use a deploy token, best would be to
      add this as well as the above mentioned ui variables. With the
      protected feature you can even prevent non privileged developers
      from stealing this secrets.<br>
    </p>
    <p><a class=3D"gmail-m_885937086432005684moz-txt-link-freetext" href=3D=
"https://docs.gitlab.com/ee/user/project/deploy_tokens/#creating-a-deploy-t=
oken" target=3D"_blank">https://docs.gitlab.com/ee/user/project/deploy_toke=
ns/#creating-a-deploy-token</a><br>
    </p>
    <p><br>
    </p>
    <div class=3D"gmail-m_885937086432005684moz-cite-prefix">Am 17.06.19 um=
 20:00 schrieb Rudolf
      Streif:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"auto">That&#39;s more of a Gitlab than Yocto question. I =
am
        doing this all the time with my GL server on AWS. You need to
        add deploy a key to the repo you want to access and then push
        the key to your Docker instance from gitlab-ci.yaml from the
        repo that you are using with GL CI.
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">:rjs</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 17, 2019, 07:20
          Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com" =
target=3D"_blank">gabbla.malist@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div>Hi all,</div>
            <div><br>
            </div>
            <div>does anyone have a guide on how to setup Yocto to run
              inside docker? Right now I managed to trigger the build
              from GitLab, but I&#39;m facing an issue related to ssh keys
              (some recipes from my meta layer are hosted on a privare
              repository). Probably this is not the best mailing list to
              ask this kind of question, but it may worth a try.</div>
            <div><br>
            </div>
            <div>Thank you, <br>
            </div>
            <div>Gabriele<br>
            </div>
          </div>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer" targ=
et=3D"_blank">yocto@yoctoproject.org</a><br>
          <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/lis=
tinfo/yocto</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"gmail-m_885937086432005684mimeAttachmentHeader"></=
fieldset>
    </blockquote>
  </div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000e3c1a3058c0b9124--
