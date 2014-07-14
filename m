Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEAB3E0076F; Mon, 14 Jul 2014 16:05:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1D02E006DB
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 16:05:56 -0700 (PDT)
Received: by mail-pd0-f175.google.com with SMTP id v10so6017975pde.34
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 16:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type;
	bh=rPM8h+19ZF+fmhlPpmncueAEiXDpr6aa2gXw0ANVB+g=;
	b=L2RuhkvlMvYke3rM7NgMITl2GXky9osDhnarvCOapHez9UCEra5TZniFi6qxZFdCgA
	g1Fb7EjRuIFGOK5JtfNCICgPasy4Ps5+Jb8FhweFUfA7wEAC6Thx0fhuvaikyJDvMAtZ
	Q//7nTO5XR56BOctbSXPdCBnkFtVjRWRx+vK3CwZuPWMCNew9AOQiwm+tl3umMSaHeI5
	yXJZ+PUByDfZh0t9vUI9PL9B6vh2UAuAmAzXBC+htxBwAwm9NzLa3p9SvyhtPf7Dqzg8
	ncmLnnzZMcaRUenlgKmYNQz+7k8badhqTmU8Gq8RIkWC+ZIK6DzUE0EAhPG50o4kvPhf
	HNQw==
X-Gm-Message-State: ALoCoQlGYlEI26QpHTnF/73E9H5Fas8rO/OvsnbrgOOCX4VEcL2MrNh3gWbGlWPKo5WF09Bzgvza
X-Received: by 10.66.65.204 with SMTP id z12mr11271058pas.97.1405379155663;
	Mon, 14 Jul 2014 16:05:55 -0700 (PDT)
Received: from [172.16.1.20] (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	mz8sm15992147pdb.62.2014.07.14.16.05.53 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 14 Jul 2014 16:05:55 -0700 (PDT)
Message-ID: <53C46250.4070905@mvista.com>
Date: Mon, 14 Jul 2014 16:05:52 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Christopher Larson <clarson@kergoth.com>, Saul Wold <sgw@linux.intel.com>
References: <53C45BD7.1020104@mvista.com> <53C45EC0.6070801@linux.intel.com>
	<CABcZANkqBZ3Kw7POOBYQ-1=6rxZSioakS-K7qbS2CcYvp1C_xg@mail.gmail.com>
In-Reply-To: <CABcZANkqBZ3Kw7POOBYQ-1=6rxZSioakS-K7qbS2CcYvp1C_xg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] /etc/os-release
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
X-List-Received-Date: Mon, 14 Jul 2014 23:05:58 -0000
Content-Type: multipart/alternative;
	boundary="------------050403030507010100000005"

--------------050403030507010100000005
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Chris,

On 07/14/2014 03:54 PM, Christopher Larson wrote:
> On Mon, Jul 14, 2014 at 3:50 PM, Saul Wold <sgw@linux.intel.com 
> <mailto:sgw@linux.intel.com>> wrote:
>
>     On 07/14/2014 03:38 PM, akuster wrote:
>
>         Hello all,
>
>         I noticed some reference to /etc/os-release in some recipes.
>         Where can I
>         find the initial creation of /etc/os-release? If one is not
>         created,
>         would there desire to have one?
>
>     Really?  We reference it in the meta/lib/oe/lsb.py
>     release_dict_file() function to search for LSB information of the
>     host machine to identify the host distro version information.
>
>     Can you be specific about which recipes are using os-release, I
>     did do a search.
>
>
> I'm pretty sure we don't have an os-release recipe in oe-core at all 
> yet, so the file isn't going to exist on target. Mentor has one in 
> meta-mentor at the moment pending time to submit it again / poke on 
> the existing thread. See the thread with the subject "[RFC PATCH 0/2] 
> Add /etc/os-release". It's definitely something we should have, in my 
> opinion.
Yeah, That is what I was thinking of.
Thanks for the pointer.

- Armin

> -- 
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics


--------------050403030507010100000005
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Chris,<br>
    <br>
    <div class="moz-cite-prefix">On 07/14/2014 03:54 PM, Christopher
      Larson wrote:<br>
    </div>
    <blockquote
cite="mid:CABcZANkqBZ3Kw7POOBYQ-1=6rxZSioakS-K7qbS2CcYvp1C_xg@mail.gmail.com"
      type="cite">
      <div dir="ltr">On Mon, Jul 14, 2014 at 3:50 PM, Saul Wold <span
          dir="ltr">&lt;<a moz-do-not-send="true"
            href="mailto:sgw@linux.intel.com" target="_blank">sgw@linux.intel.com</a>&gt;</span>
        wrote:<br>
        <div class="gmail_extra">
          <div class="gmail_quote">
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div>On 07/14/2014 03:38 PM, akuster wrote:<br>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  Hello all,<br>
                  <br>
                  I noticed some reference to /etc/os-release in some
                  recipes. Where can I<br>
                  find the initial creation of /etc/os-release? If one
                  is not created,<br>
                  would there desire to have one?<br>
                  <br>
                </blockquote>
              </div>
              Really?  We reference it in the meta/lib/oe/lsb.py
              release_dict_file() function to search for LSB information
              of the host machine to identify the host distro version
              information.<br>
              <br>
              Can you be specific about which recipes are using
              os-release, I did do a search.</blockquote>
          </div>
          <br>
        </div>
        <div class="gmail_extra">I'm pretty sure we don't have an
          os-release recipe in oe-core at all yet, so the file isn't
          going to exist on target. Mentor has one in meta-mentor at the
          moment pending time to submit it again / poke on the existing
          thread. See the thread with the subject "[RFC PATCH 0/2] Add
          /etc/os-release". It's definitely something we should have, in
          my opinion.<br>
        </div>
      </div>
    </blockquote>
    Yeah, That is what I was thinking of. <br>
    Thanks for the pointer.<br>
    <br>
    - Armin<br>
    <br>
    <blockquote
cite="mid:CABcZANkqBZ3Kw7POOBYQ-1=6rxZSioakS-K7qbS2CcYvp1C_xg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          -- <br>
          Christopher Larson<br>
          clarson at kergoth dot com<br>
          Founder - BitBake, OpenEmbedded, OpenZaurus<br>
          Maintainer - Tslib<br>
          Senior Software Engineer, Mentor Graphics
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------050403030507010100000005--
