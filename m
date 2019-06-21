Return-Path: <b@halonis.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AE2BE00B9C; Fri, 21 Jun 2019 15:16:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 483 seconds by postgrey-1.32 at yocto-www;
	Fri, 21 Jun 2019 15:16:32 PDT
Received: from mail.xunit.de (mail.xunit.de [87.98.242.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F321EE00B8F
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2019 15:16:32 -0700 (PDT)
Received: from [192.168.188.30] (x4db476bf.dyn.telefonica.de [77.180.118.191])
	by mail.xunit.de (Postfix) with ESMTPSA id F0ACF87B43
	for <yocto@yoctoproject.org>; Sat, 22 Jun 2019 00:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=halonis.de;
	s=default; t=1561154903;
	bh=fINE9rDq/3Ln4LZwQeALTgrwXBX7v5AVwfVSW808GMY=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=ZWKJX7dNmy68bgdXv5aHDPuqVTdtauaWwpMUIhsn1xK66MchdLBklzIs/DJIlpfZa
	3gPlF1pVyCGv5VsQIzVMDxWSXstpiOfuNS1X+QxFFm97Q7+jfGkYYJOfxJ/ccAcPjV
	CzCE1Cal69zDP7suRQAyDhJGIl6VG/X3eGgeJ4GQ=
To: yocto@yoctoproject.org
References: <CAAx3WaCUb18Yf6Qp33qQCu9O3s-qpa75uoSm+sKv89jR0FbZmQ@mail.gmail.com>
	<CAPxNcnfeBKEEn-fEW2evxd3O3uVxrFmuOJMb6quwZz=oGpXgYg@mail.gmail.com>
From: Benjamin <b@halonis.de>
Openpgp: preference=signencrypt
Autocrypt: addr=b@halonis.de; prefer-encrypt=mutual; keydata=
	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
	MuI1ocDsTzxo
Message-ID: <61eed6bb-10f6-e46a-7735-431934ace662@xunit.de>
Date: Sat, 22 Jun 2019 00:08:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAPxNcnfeBKEEn-fEW2evxd3O3uVxrFmuOJMb6quwZz=oGpXgYg@mail.gmail.com>
X-Mailman-Approved-At: Sat, 22 Jun 2019 13:35:31 -0700
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
X-List-Received-Date: Fri, 21 Jun 2019 22:16:35 -0000
Content-Type: multipart/alternative;
	boundary="------------050B6415B1189BDA15103B22"
Content-Language: en-US

--------------050B6415B1189BDA15103B22
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hej,

I use for this secret variables and store the access tokens or ssh keys
in in one of this. A script running inside of the docker container uses
sed magic for replacing string, when ever the direct usage of the secret
variables is not possible. The ssh key is then written in a first step
with something like

echo "$SECRET_PRIVATE_SSH" > ~/.ssh/id_ecdsa && chmod 600 ~/.ssh/id_ecdsa=


gitlab will not print the secret variables in clear format.

https://docs.gitlab.com/ee/ci/variables/#via-the-ui

Whenever possible you should use a deploy token, best would be to add
this as well as the above mentioned ui variables. With the protected
feature you can even prevent non privileged developers from stealing
this secrets.

https://docs.gitlab.com/ee/user/project/deploy_tokens/#creating-a-deploy-=
token


Am 17.06.19 um 20:00 schrieb Rudolf Streif:
> That's more of a Gitlab than Yocto question. I am doing this all the
> time with my GL server on AWS. You need to add deploy a key to the
> repo you want to access and then push the key to your Docker instance
> from gitlab-ci.yaml from the repo that you are using with GL CI.
>
> :rjs
>
> On Mon, Jun 17, 2019, 07:20 Gabriele Zampieri <gabbla.malist@gmail.com
> <mailto:gabbla.malist@gmail.com>> wrote:
>
>     Hi all,
>
>     does anyone have a guide on how to setup Yocto to run inside
>     docker? Right now I managed to trigger the build from GitLab, but
>     I'm facing an issue related to ssh keys (some recipes from my meta
>     layer are hosted on a privare repository). Probably this is not
>     the best mailing list to ask this kind of question, but it may
>     worth a try.
>
>     Thank you,
>     Gabriele
>     --=20
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>

--------------050B6415B1189BDA15103B22
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hej,</p>
    <p>I use for this secret variables and store the access tokens or
      ssh keys in in one of this. A script running inside of the docker
      container uses sed magic for replacing string, when ever the
      direct usage of the secret variables is not possible. The ssh key
      is then written in a first step with something like</p>
    <p>echo "$SECRET_PRIVATE_SSH" &gt; ~/.ssh/id_ecdsa &amp;&amp; chmod
      600 ~/.ssh/id_ecdsa</p>
    <p>gitlab will not print the secret variables in clear format.</p>
    <p><a class="moz-txt-link-freetext" href="https://docs.gitlab.com/ee/ci/variables/#via-the-ui">https://docs.gitlab.com/ee/ci/variables/#via-the-ui</a></p>
    <p>Whenever possible you should use a deploy token, best would be to
      add this as well as the above mentioned ui variables. With the
      protected feature you can even prevent non privileged developers
      from stealing this secrets.<br>
    </p>
    <p><a class="moz-txt-link-freetext" href="https://docs.gitlab.com/ee/user/project/deploy_tokens/#creating-a-deploy-token">https://docs.gitlab.com/ee/user/project/deploy_tokens/#creating-a-deploy-token</a><br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">Am 17.06.19 um 20:00 schrieb Rudolf
      Streif:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAPxNcnfeBKEEn-fEW2evxd3O3uVxrFmuOJMb6quwZz=oGpXgYg@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="auto">That's more of a Gitlab than Yocto question. I am
        doing this all the time with my GL server on AWS. You need to
        add deploy a key to the repo you want to access and then push
        the key to your Docker instance from gitlab-ci.yaml from the
        repo that you are using with GL CI.
        <div dir="auto"><br>
        </div>
        <div dir="auto">:rjs</div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Jun 17, 2019, 07:20
          Gabriele Zampieri &lt;<a href="mailto:gabbla.malist@gmail.com"
            moz-do-not-send="true">gabbla.malist@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div dir="ltr">
            <div>Hi all,</div>
            <div><br>
            </div>
            <div>does anyone have a guide on how to setup Yocto to run
              inside docker? Right now I managed to trigger the build
              from GitLab, but I'm facing an issue related to ssh keys
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
          <a href="mailto:yocto@yoctoproject.org" target="_blank"
            rel="noreferrer" moz-do-not-send="true">yocto@yoctoproject.org</a><br>
          <a href="https://lists.yoctoproject.org/listinfo/yocto"
            rel="noreferrer noreferrer" target="_blank"
            moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------050B6415B1189BDA15103B22--
