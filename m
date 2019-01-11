Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 965D8E00CD8; Fri, 11 Jan 2019 13:47:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D917BE00BE8
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 13:47:42 -0800 (PST)
Received: by mail-pl1-f174.google.com with SMTP id z23so7347847plo.0
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 13:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=OaIFRBGMJnhy+2PyJkSaUrCexUVEp8O45ivW4nL2GHE=;
	b=BjX3Ffv7lPQs9kgXkBPpqHXJQ555pfnvA+yiynKVJhms6pTIhEf4EU0naXZdiaVZUY
	6rv6HKHHE9+5ax4c/0GmAw9onqO22/p2UJHqN6+GjFgYsoEql4bmcK2QpK/6dxMwnkcu
	iM5AWR8uClxHEAWUT8AtDx6XrK6yw3/vtvDwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=OaIFRBGMJnhy+2PyJkSaUrCexUVEp8O45ivW4nL2GHE=;
	b=JxK4DpdrDAPjXW4oenv64lfzLsjAPDxwg8j+fz9eW32rkaIfZNWrQOzdpmjsf26p3A
	6MZowaadpLAR1mT96CQlIRsaNjgy8d8wXdGxBi+6hfVrxWOwPgZKJxNSZBP9CHWXZ+dO
	TZUDS5QXjHE7ZQyxta8pYAJENKLoeh1VE3EBrw0X+LNdazqUh+ymSJ3y4MgCm+F6I4w5
	byu/fBpEorD5kpEP/fJKxWLSYKxv1cCO8+OkEcYMXHlsvZ8E1jzVGwbHZy/3NILxX3Gc
	OMvKv7Vjpnjo3Z5eU6/kVQZ8CrtlUPuaniBenWSh+t3XUR0pQsbt1GHgjcXvvnlGTAyg
	qoBw==
X-Gm-Message-State: AJcUukfKWxPkx/aDVbYK6Eb8IQsbFB8v6gbmNhQZmFxc+VT9oeX2pA4N
	rO2IjqGEyEEEDKtVMlKGmLYe2OChYNE=
X-Google-Smtp-Source: ALg8bN7stCIc6HZjZzc/HBSzUHoKLBR2wAvjz/G9eWEcXTBuRagGrln0AzAYT9zqYvIE/BJqTfuang==
X-Received: by 2002:a17:902:4225:: with SMTP id
	g34mr16617163pld.152.1547243261236; 
	Fri, 11 Jan 2019 13:47:41 -0800 (PST)
Received: from ?IPv6:2601:1c0:ce01:2bef::35fd? ([2601:1c0:ce01:2bef::35fd])
	by smtp.gmail.com with ESMTPSA id
	n68sm130848365pfb.62.2019.01.11.13.47.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Jan 2019 13:47:40 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>
References: <20190111190256.9354-1-mhalstead@linuxfoundation.org>
	<CAMKF1sqOtMu9+cqa=_Gan3NqXmT6YDXKNvsOtAf3SCSc9C974w@mail.gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <bc752f4a-0f29-a4d0-d9b0-a9dea5a8a12b@linuxfoundation.org>
Date: Fri, 11 Jan 2019 13:47:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqOtMu9+cqa=_Gan3NqXmT6YDXKNvsOtAf3SCSc9C974w@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [patchtest][PATCH] scripts: Reset working repository to match origin during clean up
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
X-List-Received-Date: Fri, 11 Jan 2019 21:47:43 -0000
Content-Type: multipart/alternative;
	boundary="------------65CBB2B9BE0781E36288A2EB"
Content-Language: en-US

--------------65CBB2B9BE0781E36288A2EB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Since these commands run in $REPODIR and $path I think they will apply 
to any repository under test.

On 1/11/19 12:25 PM, Khem Raj wrote:
> Hi Michael
>
> Can we enable these checks for meta-openembedded repo as well
>
> On Fri, Jan 11, 2019 at 11:03 AM Michael Halstead 
> <mhalstead@linuxfoundation.org <mailto:mhalstead@linuxfoundation.org>> 
> wrote:
>
>     If the local HEAD is a patchtest generated merge commit patchtest
>     may be unable
>     to apply new patches. This should prevent patchtest from becoming
>     stuck
>     in that state.
>
>     Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org
>     <mailto:mhalstead@linuxfoundation.org>>
>     ---
>      scripts/create-share-folder | 2 +-
>      scripts/host                | 2 +-
>      2 files changed, 2 insertions(+), 2 deletions(-)
>
>     diff --git a/scripts/create-share-folder b/scripts/create-share-folder
>     index 861da4b..9432cb1 100755
>     --- a/scripts/create-share-folder
>     +++ b/scripts/create-share-folder
>     @@ -122,7 +122,7 @@ function update_repository() {
>             (
>                 cd $REPODIR
>                 git am --abort --quiet
>     -           git reset --hard --quiet
>     +           git reset --hard --quiet FETCH_HEAD
>                 git clean -f -e ".git-pw*" --quiet
>             )
>
>     diff --git a/scripts/host b/scripts/host
>     index 85f0e4a..893ce63 100755
>     --- a/scripts/host
>     +++ b/scripts/host
>     @@ -83,7 +83,7 @@ function clean() {
>          (
>             cd $path
>             git am --abort
>     -       git reset --hard
>     +       git reset --hard FETCH_HEAD
>             git clean -f -e ".git-pw*"
>          )
>      }
>     -- 
>     2.17.2
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Michael Halstead
Linux Foundation / SysAdmin


--------------65CBB2B9BE0781E36288A2EB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Since these commands run in $REPODIR and $path I think they will
      apply to any repository under test.<br>
    </p>
    <div class="moz-cite-prefix">On 1/11/19 12:25 PM, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1sqOtMu9+cqa=_Gan3NqXmT6YDXKNvsOtAf3SCSc9C974w@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div>
        <div dir="auto">Hi Michael </div>
      </div>
      <div dir="auto"><br>
      </div>
      <div dir="auto">Can we enable these checks for meta-openembedded
        repo as well </div>
      <div><br>
        <div class="gmail_quote">
          <div dir="ltr">On Fri, Jan 11, 2019 at 11:03 AM Michael
            Halstead &lt;<a href="mailto:mhalstead@linuxfoundation.org"
              moz-do-not-send="true">mhalstead@linuxfoundation.org</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">If the
            local HEAD is a patchtest generated merge commit patchtest
            may be unable<br>
            to apply new patches. This should prevent patchtest from
            becoming stuck<br>
            in that state.<br>
            <br>
            Signed-off-by: Michael Halstead &lt;<a
              href="mailto:mhalstead@linuxfoundation.org"
              target="_blank" moz-do-not-send="true">mhalstead@linuxfoundation.org</a>&gt;<br>
            ---<br>
             scripts/create-share-folder | 2 +-<br>
             scripts/host                | 2 +-<br>
             2 files changed, 2 insertions(+), 2 deletions(-)<br>
            <br>
            diff --git a/scripts/create-share-folder
            b/scripts/create-share-folder<br>
            index 861da4b..9432cb1 100755<br>
            --- a/scripts/create-share-folder<br>
            +++ b/scripts/create-share-folder<br>
            @@ -122,7 +122,7 @@ function update_repository() {<br>
                    (<br>
                        cd $REPODIR<br>
                        git am --abort --quiet<br>
            -           git reset --hard --quiet<br>
            +           git reset --hard --quiet FETCH_HEAD<br>
                        git clean -f -e ".git-pw*" --quiet<br>
                    )<br>
            <br>
            diff --git a/scripts/host b/scripts/host<br>
            index 85f0e4a..893ce63 100755<br>
            --- a/scripts/host<br>
            +++ b/scripts/host<br>
            @@ -83,7 +83,7 @@ function clean() {<br>
                 (<br>
                    cd $path<br>
                    git am --abort<br>
            -       git reset --hard<br>
            +       git reset --hard FETCH_HEAD<br>
                    git clean -f -e ".git-pw*"<br>
                 )<br>
             }<br>
            -- <br>
            2.17.2<br>
            <br>
            -- <br>
            _______________________________________________<br>
            yocto mailing list<br>
            <a href="mailto:yocto@yoctoproject.org" target="_blank"
              moz-do-not-send="true">yocto@yoctoproject.org</a><br>
            <a href="https://lists.yoctoproject.org/listinfo/yocto"
              rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Michael Halstead
Linux Foundation / SysAdmin
</pre>
  </body>
</html>

--------------65CBB2B9BE0781E36288A2EB--
