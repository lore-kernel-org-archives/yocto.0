Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E750E00AB0; Mon,  1 Apr 2019 16:20:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F6BEE00A84
	for <yocto@yoctoproject.org>; Mon,  1 Apr 2019 16:20:43 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id g12so5230888pll.11
	for <yocto@yoctoproject.org>; Mon, 01 Apr 2019 16:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=5+m6EgkvYaAFD8U3fNifKXL9GZ0h5NTRcOIQ7f8iSdw=;
	b=rw6LirrDMtdgMcesmJxrC5oXXTTmN1ASjZj6dYbw5FKQzNS5eicXkwIfa8wZ/URCeS
	FTJDvVD2oGMO3njkYAdaSp+nv/S7iwnciQ0AVg/pHdp0YHgSwyLeRDj+Zde5WYepwPd3
	n3wmvObrHXP3aM03F44L2FZL6wJ3B5W655CCwk/x5uVPmrplpVE0PgZu6I7FBvBcDTiD
	g03GvwxgpthOZ4CoRWHHveRJJmP3To+6Lde6Pfmo1nUFwd4sjtZmLGqCzQ+sl+MllKyA
	bxz/hWwnFCNrDM8KGBVoPAzBOvYtIwOoBtetwN7i7BhKo+5qRaAMuRPI6mYjFdAnVoin
	CZbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=5+m6EgkvYaAFD8U3fNifKXL9GZ0h5NTRcOIQ7f8iSdw=;
	b=TMQ0Hf9DQEw2kgm4hefwaupKVvF+GCCW2sFxLfdel0cEbxonplnbuz6pU03RPG/o/M
	wXTKkMe24OtgaYtEr646lho5w2P/QYMnZ7rjj6yIElk4i4JEhDxJkgwlTsB8Fu6d0K+G
	szfiS9r8dgRLCYqg1pGJPNWralH2+4mgeAoYHT1etTCjBfgUSkBSsUhNTTIsguuI84QG
	4oGnbDjXbA9TKPPmWL9nkQ0lmncwINXL4jKL6div2fv4nnRbrOImlCcoRjkq1CDz09I1
	vp5Dn4ONPS5yphM4O+SZzmrnD+Tt+yxs7teNb1zynHhw0JA6gDA2XJQFtjeaCPUPsi2/
	rJ/A==
X-Gm-Message-State: APjAAAVi++/Nm4jYmJ3shEcUiC/E9mp7f/Ep2ioUPZ4PsHFNMRejfKox
	w5nwRobUgNS0r/217ytyzKQNMYjR
X-Google-Smtp-Source: APXvYqzYeIccJ3RXPF5Li3FXWAvUBthoxU8CdJGYBLoUJloWgIpfPCg62c0W6e1GNRwm/epMyGpVTg==
X-Received: by 2002:a17:902:703:: with SMTP id
	3mr32826841pli.224.1554160842725; 
	Mon, 01 Apr 2019 16:20:42 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:4157:7fb6:2684:2e1?
	([2601:202:4180:c33:4157:7fb6:2684:2e1])
	by smtp.gmail.com with ESMTPSA id
	j19sm9820939pfh.41.2019.04.01.16.20.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 01 Apr 2019 16:20:42 -0700 (PDT)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <854544cb-aab1-1a9d-9e98-0f39663ca621@gmail.com>
	<b08083fc2f63f6324a652706f8343a0b8defe209.camel@linuxfoundation.org>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	mQINBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
	Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
	mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
	aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
	mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
	C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
	Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
	7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
	dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
	FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABtCFha3VzdGVyODA4
	IDxha3VzdGVyODA4QGdtYWlsLmNvbT6JAj0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
	FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
	vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
	ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
	IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
	g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
	rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
	FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
	wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
	t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
	aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
	oRoyDxC5Ag0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
	Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
	37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
	0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
	IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
	0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
	0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
	ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
	UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
	Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAGJAiUEGAEI
	AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
	mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
	ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
	vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
	JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
	EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
	dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
	/mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
	PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
	ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
	8CS2NxU=
Message-ID: <a1416fe3-04fb-1d37-eaef-05b9a838254e@gmail.com>
Date: Mon, 1 Apr 2019 16:20:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b08083fc2f63f6324a652706f8343a0b8defe209.camel@linuxfoundation.org>
Subject: Re: [OE-core] Git commit process question.
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
X-List-Received-Date: Mon, 01 Apr 2019 23:20:44 -0000
Content-Type: multipart/alternative;
	boundary="------------E0576754E264D110AA13843E"
Content-Language: en-US

--------------E0576754E264D110AA13843E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 4/1/19 4:02 PM, Richard Purdie wrote:
> On Mon, 2019-04-01 at 15:33 -0700, akuster808 wrote:
>> Hello,
>>
>> I have noticed a large number of git commits with no header
>> information being accepted.
> Can you be more specific about what "no header information" means? You
> mean a shortlog and no full log message?
Commits with just a "subject" and signoff. No additional information

We tend to reference back to how the kernel does things.

https://www.kernel.org/doc/html/latest/process/submitting-patches.html
These two sections in particular.


    2) Describe your changes

Describe your problem. Whether your patch is a one-line bug fix or 5000
lines of a new feature, there must be an underlying problem that
motivated you to do this work. Convince the reviewer that there is a
problem worth fixing and that it makes sense for them to read past the
first paragraph.


along with this section.


    14) The canonical patch format

This section describes how the patch itself should be formatted. Note
that, if you have your patches stored in a |git| repository, proper
patch formatting can be had with |git format-patch|. The tools cannot
create the necessary text, though, so read the instructions below anyway.=


The canonical patch subject line is:

Subject: [PATCH 001/123] subsystem: summary phrase

The canonical patch message body contains the following:

      * A |from| line specifying the patch author, followed by an empty
        line (only needed if the person sending the patch is not the
        author).
      * The body of the explanation, line wrapped at 75 columns, which
        will be copied to the permanent changelog to describe this patch.=

      * An empty line.
      * The |Signed-off-by:| lines, described above, which will also go
        in the changelog.
      * A marker line containing simply |---|.
      * Any additional comments not suitable for the changelog.
      * The actual patch (|diff| output).


    - Armin

>
> Cheers,
>
> Richard
>


--------------E0576754E264D110AA13843E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 4/1/19 4:02 PM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:b08083fc2f63f6324a652706f8343a0b8defe209.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">On Mon, 2019-04-01 at 15:33 -0700, akuster808 wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Hello,

I have noticed a large number of git commits with no header
information being accepted.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Can you be more specific about what "no header information" means? You
mean a shortlog and no full log message?</pre>
    </blockquote>
    Commits with just a "subject" and signoff. No additional information<br>
    <br>
    We tend to reference back to how the kernel does things.<br>
    <br>
<a class="moz-txt-link-freetext" href="https://www.kernel.org/doc/html/latest/process/submitting-patches.html">https://www.kernel.org/doc/html/latest/process/submitting-patches.html</a><br>
    These two sections in particular.<br>
    <h2>2) Describe your changes</h2>
    <p>Describe your problem. Whether your patch is a one-line bug fix
      or
      5000 lines of a new feature, there must be an underlying problem
      that
      motivated you to do this work. Convince the reviewer that there is
      a
      problem worth fixing and that it makes sense for them to read past
      the
      first paragraph.</p>
    <p><br>
    </p>
    <p>along with this section.</p>
    <p><br>
    </p>
    <h2>14) The canonical patch format</h2>
    <p>This section describes how the patch itself should be formatted.
      Note
      that, if you have your patches stored in a <code class="docutils
        literal"><span class="pre">git</span></code> repository, proper
      patch
      formatting can be had with <code class="docutils literal"><span
          class="pre">git</span> <span class="pre">format-patch</span></code>.
      The tools cannot create
      the necessary text, though, so read the instructions below anyway.</p>
    <p>The canonical patch subject line is:</p>
    <div class="highlight-none">
      <div class="highlight">
        <pre><span></span>Subject: [PATCH 001/123] subsystem: summary phrase
</pre>
      </div>
    </div>
    <p>The canonical patch message body contains the following:</p>
    <blockquote>
      <div>
        <ul class="simple">
          <li>A <code class="docutils literal"><span class="pre">from</span></code>
            line specifying the patch author, followed by an empty
            line (only needed if the person sending the patch is not the
            author).</li>
          <li>The body of the explanation, line wrapped at 75 columns,
            which will
            be copied to the permanent changelog to describe this patch.</li>
          <li>An empty line.</li>
          <li>The <code class="docutils literal"><span class="pre">Signed-off-by:</span></code>
            lines, described above, which will
            also go in the changelog.</li>
          <li>A marker line containing simply <code class="docutils
              literal"><span class="pre">---</span></code>.</li>
          <li>Any additional comments not suitable for the changelog.</li>
          <li>The actual patch (<code class="docutils literal"><span
                class="pre">diff</span></code> output).</li>
        </ul>
        <p><br>
        </p>
        <p>- Armin<br>
        </p>
      </div>
    </blockquote>
    <blockquote type="cite"
cite="mid:b08083fc2f63f6324a652706f8343a0b8defe209.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">

Cheers,

Richard

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------E0576754E264D110AA13843E--
