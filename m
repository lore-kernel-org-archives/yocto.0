Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3680E00971; Thu, 15 Nov 2018 08:32:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7554E00901
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 08:32:44 -0800 (PST)
Received: by mail-pl1-f171.google.com with SMTP id g59-v6so9720409plb.10
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 08:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=fY7eHgvTqFeyPLigSR3kZYdgpFkJab3RJjs6GGsn630=;
	b=lt4gCKukcETb1h7+7dsKgkyyoWc8LdRljBSczNrDcWPxVy77+HrnzG+58Z+4eYTDGF
	C5omDYealaJOaTZQAL/TlYGeWoDqWINwOqdrBaGQ4yt/P4T1C3kGx15ZL2HWC6gGOuAX
	0PvPekpD3jmGu5nfS4Zu5tS12ojNZo/A2Yxp88L20Yo0vY26FPQmfAG6+P7+TI3p1Qu+
	oBTqEgFGxpnamK4YyskVwdVDdFQKvmsK+2KYKV7mph32eteeDFvfqBHpBtPq12ic/5Lm
	uaOcztcDG/ns2QCXnCmAV+M0quzNqIOt5J+O3yD59cSbjDLFsR9GJhZK0pmNx67ke3zW
	YwEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=fY7eHgvTqFeyPLigSR3kZYdgpFkJab3RJjs6GGsn630=;
	b=fyNugB9fUWNSWrXjLhupdK0ItTjPDCy9Gv6AaiU4iHZiLumDS+RUSIkhJHWOyWiDQR
	HMyn+uFEmgXFFdASybEtql1vDFcqRZis0EAq6C5NKpn/mkCoA0D7w9rMBjUrBcv79XbX
	QCgAVZBJhKu/2pqitLEgSW/SJgLlBB/Pmj/I469MjmQ1Q59c1qU8rWduVVWp3Pqg1YHp
	cogkYg8HkVd9R2LI7JOjGCU05UDoE9pYid3bfCDyn4aiKlpLFVJB/93su7kVFqtmBIdS
	exxe0rQ+Qu7135+o6VEOSIGzEtF4jpvnb4ZkUiMYUrhdAr0Bb17+QZxTQ19xQOSZP+z0
	mfNg==
X-Gm-Message-State: AGRZ1gIGPRbS6giDgUb5/rU8+IF+HouvS4q0H5+Wbdg+o7ePoVqCr+tb
	07dB0/NmZQUPlEd8NBqs1ROVwn/X
X-Google-Smtp-Source: AJdET5fzyx+7C8Ebqx4ni7BXHyGFG9Zl80udmZyhcfn9No9AbkCB0tw5BCVq1qmFXDNnlPQXQiuGUQ==
X-Received: by 2002:a17:902:b943:: with SMTP id
	h3-v6mr6558008pls.124.1542299563872; 
	Thu, 15 Nov 2018 08:32:43 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:ad7f:56cd:6813:1de5?
	([2601:202:4180:c33:ad7f:56cd:6813:1de5])
	by smtp.gmail.com with ESMTPSA id
	c7-v6sm34231013pfh.25.2018.11.15.08.32.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Nov 2018 08:32:43 -0800 (PST)
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
References: <72559C80-DE60-46D4-9736-9B46E59F3C9E@intel.com>
	<9ADD3FDE8B189B4AA2F8A3C711F8155ECFD42E3E@fmsmsx124.amr.corp.intel.com>
	<13321d66-f118-a546-4468-4454238e5f6a@gmail.com>
	<CAFNP8OsXdnXx5-xma65S4boL8poZc8NFigDgV2tfjWWpcGVswQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <763b21ae-cc27-a909-8091-0be7aa0aa39b@gmail.com>
Date: Thu, 15 Nov 2018 08:32:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAFNP8OsXdnXx5-xma65S4boL8poZc8NFigDgV2tfjWWpcGVswQ@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: FW: final pass on release notes....and general status of readiness
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
X-List-Received-Date: Thu, 15 Nov 2018 16:32:45 -0000
Content-Type: multipart/alternative;
	boundary="------------FA6027D1269DA06AB931DE9E"
Content-Language: en-US

--------------FA6027D1269DA06AB931DE9E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Stephen,

Please add "multiconfig in no longer works with COMPATIBLE_MACHINE" bug
12985

thanks,

Armin

On 11/14/18 2:02 PM, Scott Rifenbark wrote:
> Especially true for the manuals... always go to the website for best
> set of manuals.
>
> Scott
>
> On Wed, Nov 14, 2018 at 1:41 PM akuster808 <akuster808@gmail.com
> <mailto:akuster808@gmail.com>> wrote:
>
>
>     On 11/14/18 12:47 PM, Jolley, Stephen K wrote:
>>
>>     We will release YP 2.6 M4 rc1 shortly.  Please give feedback if
>>     any is required.
>>
>
>     Please add the note that Tip of Thud is not what is being released.
>
>     This will just confuse folks trying to connect the dots.
>
>
>     - armin
>
>>      
>>
>>     Thanks,
>>
>>      
>>
>>     Stephen
>>
>>      
>>
>>     *From:* Graydon, Tracy
>>     *Sent:* Wednesday, November 14, 2018 12:33 PM
>>     *To:* Jolley, Stephen K <stephen.k.jolley@intel.com>
>>     <mailto:stephen.k.jolley@intel.com>; Michael Halstead
>>     <mhalstead@linuxfoundation.org>
>>     <mailto:mhalstead@linuxfoundation.org>
>>     *Subject:* final pass on release notes....and general status of
>>     readiness
>>
>>      
>>
>>     Ugh, I am not seeing the email I sent with the finalized release
>>     notes. I dunno if I sent it or not because I am having a
>>     nightmare with Outlook on Mac eating things and generally not
>>     working right.
>>
>>
>>     So, by way of sanity check, attached.  The only changes were
>>     adding the binutils CVES to Known issues:
>>
>>      
>>
>>     binutils: fix CVE-2018-18309, CVE-2018-18605, CVE-2018-18606,
>>     CVE-2018-18607
>>
>>      
>>
>>     And the gitsm known issue:
>>
>>      
>>
>>     - gitsm fixes on master-next:
>>
>>     * The submodule name and path were assumed to be the same, which
>>     is not necessarily true.
>>
>>     * Submodules refer to a specific commit, not branch, but we
>>     erroneously check against the branch specified in SRC_URI. This
>>     results in
>>
>>     failure if a submodule commit is not on that branch.
>>
>>      
>>
>>     So, nothing major there. Just really a sanity check on the gitsm
>>     wording.
>>
>>      
>>
>>     Everything is ready to go. Pages are set and just need to be
>>     published. Release announcement is ready. So we just need to do
>>     the final mirror and tagging magic, and announce.
>>
>>      
>>
>>     If the wording on gitsm issue looks reasonable, we are good to go.
>>
>>      
>>
>>     -t
>>
>>      
>>
>>      
>>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>

--------------FA6027D1269DA06AB931DE9E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Stephen,</p>
    <p>Please add "<span id="summary_alias_container"> <span
          id="short_desc_nonedit_display">multiconfig in no longer works
          with COMPATIBLE_MACHINE" bug 12985</span></span></p>
    <p><span id="summary_alias_container"><span
          id="short_desc_nonedit_display">thanks,</span></span></p>
    <p><span id="summary_alias_container"><span
          id="short_desc_nonedit_display">Armin<br>
        </span></span></p>
    <div class="moz-cite-prefix">On 11/14/18 2:02 PM, Scott Rifenbark
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAFNP8OsXdnXx5-xma65S4boL8poZc8NFigDgV2tfjWWpcGVswQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Especially true for the manuals... always go to the website
          for best set of manuals.</div>
        <div><br>
        </div>
        <div>Scott<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr">On Wed, Nov 14, 2018 at 1:41 PM akuster808 &lt;<a
            href="mailto:akuster808@gmail.com" moz-do-not-send="true">akuster808@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">
          <div text="#000000" bgcolor="#FFFFFF">
            <p><br>
            </p>
            <div class="m_1823094080113469226moz-cite-prefix">On
              11/14/18 12:47 PM, Jolley, Stephen K wrote:<br>
            </div>
            <blockquote type="cite">
              <div class="m_1823094080113469226WordSection1">
                <p class="MsoNormal"><a
                    name="m_1823094080113469226__MailEndCompose"
                    moz-do-not-send="true"><span style="color:#1f497d">We
                      will release YP 2.6 M4 rc1 shortly.  Please give
                      feedback if any is required.</span></a></p>
              </div>
            </blockquote>
            <p><br>
            </p>
            Please add the note that Tip of Thud is not what is being
            released. <br>
            <p>This will just confuse folks trying to connect the dots.
              <br>
            </p>
            <p><br>
            </p>
            <p>- armin<br>
            </p>
            <blockquote type="cite">
              <div class="m_1823094080113469226WordSection1">
                <p class="MsoNormal"><span style="color:#1f497d"> </span></p>
                <p class="MsoNormal"><span style="color:#1f497d">Thanks,</span></p>
                <p class="MsoNormal"><span style="color:#1f497d"> </span></p>
                <div>
                  <p class="MsoNormal"><span style="color:#1f497d">Stephen</span></p>
                </div>
                <p class="MsoNormal"><span style="color:#1f497d"> </span></p>
                <div>
                  <div style="border:none;border-top:solid #e1e1e1
                    1.0pt;padding:3.0pt 0in 0in 0in">
                    <p class="MsoNormal"><a
                        name="m_1823094080113469226______replyseparator"
                        moz-do-not-send="true"></a><b>From:</b> Graydon,
                      Tracy <br>
                      <b>Sent:</b> Wednesday, November 14, 2018 12:33 PM<br>
                      <b>To:</b> Jolley, Stephen K <a
                        class="m_1823094080113469226moz-txt-link-rfc2396E"
                        href="mailto:stephen.k.jolley@intel.com"
                        target="_blank" moz-do-not-send="true">&lt;stephen.k.jolley@intel.com&gt;</a>;
                      Michael Halstead <a
                        class="m_1823094080113469226moz-txt-link-rfc2396E"
                        href="mailto:mhalstead@linuxfoundation.org"
                        target="_blank" moz-do-not-send="true">&lt;mhalstead@linuxfoundation.org&gt;</a><br>
                      <b>Subject:</b> final pass on release notes....and
                      general status of readiness</p>
                  </div>
                </div>
                <p class="MsoNormal"> </p>
                <p class="MsoNormal">Ugh, I am not seeing the email I
                  sent with the finalized release notes. I dunno if I
                  sent it or not because I am having a nightmare with
                  Outlook on Mac eating things and generally not working
                  right. </p>
                <p class="MsoNormal"><br>
                  So, by way of sanity check, attached.  The only
                  changes were adding the binutils CVES to Known issues:</p>
                <p class="MsoNormal"> </p>
                <p class="MsoNormal">binutils: fix CVE-2018-18309,
                  CVE-2018-18605, CVE-2018-18606, CVE-2018-18607</p>
                <p class="MsoNormal"> </p>
                <p class="MsoNormal">And the gitsm known issue: </p>
                <p class="MsoNormal"> </p>
                <p class="MsoNormal">- gitsm fixes on master-next:</p>
                <p class="MsoNormal">* The submodule name and path were
                  assumed to be the same, which is not necessarily true.</p>
                <p class="MsoNormal">* Submodules refer to a specific
                  commit, not branch, but we erroneously check against
                  the branch specified in SRC_URI. This results in</p>
                <p class="MsoNormal">failure if a submodule commit is
                  not on that branch.</p>
                <p class="MsoNormal"> </p>
                <p class="MsoNormal">So, nothing major there. Just
                  really a sanity check on the gitsm wording. </p>
                <p class="MsoNormal"> </p>
                <p class="MsoNormal">Everything is read<span
                    style="color:#1f497d">y</span> to go. Pages are set
                  and just need to be published. Release announcement is
                  ready. So we just need to do the final mirror and
                  tagging magic, and announce.</p>
                <p class="MsoNormal"> </p>
                <p class="MsoNormal">If the wording on gitsm issue looks
                  reasonable, we are good to go.</p>
                <p class="MsoNormal"> </p>
                <p class="MsoNormal">-t</p>
                <p class="MsoNormal"> </p>
                <p class="MsoNormal"> </p>
              </div>
            </blockquote>
          </div>
          -- <br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a href="mailto:yocto@yoctoproject.org" target="_blank"
            moz-do-not-send="true">yocto@yoctoproject.org</a><br>
          <a href="https://lists.yoctoproject.org/listinfo/yocto"
            rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------FA6027D1269DA06AB931DE9E--
