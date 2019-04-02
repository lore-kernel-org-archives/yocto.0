Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AF5BE00C43; Tue,  2 Apr 2019 14:24:56 -0700 (PDT)
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
	*      [209.85.215.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E167E00C14
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 14:24:55 -0700 (PDT)
Received: by mail-pg1-f178.google.com with SMTP id e6so2818978pgc.4
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 14:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=H41fFPxZsi5cF+YP3DOD15omBJNInATJbv7sUCiveAI=;
	b=o2yH8GTFCFRIxxT6T4mAAaXeCo7Fh66CVVgus2n75CDSymrMW2TIdeMdK5N9ademFJ
	eYwQQyGzkQ+yXs6wLZQG2Sz6taxiD61Rg0kdHA75YmG7ROXlVR0Ed07jJFTCx6kkExz8
	Y9S8fGYn7qtRD3HeLOA5a0cRpg6YJ0dvI81DRzGMx/mRNmkdeigjmPayZpo3HAA+zMXH
	pMSBM4xd+/cybcwMcBsM21SzNFFVuXCXU7dWpSu7/mCAVsNNKvEhLEEay/n3aRK8HRni
	7ulZz1hzLjkPBK6lyuY4ENYwCRPiAJqW8raYtJmidSyNG1BPjloNaAV0XXz8GhG1JkF0
	XFVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=H41fFPxZsi5cF+YP3DOD15omBJNInATJbv7sUCiveAI=;
	b=nBKoc5TbuNuoxO8HxGboJAY9h1/g+AZIGq5tJpaCCflAU4r71JkEprAElK3xMFjGO7
	OZIxRa4ZWUbL9VvAYWSoFJ3l4V3P8lY5F1h3v4Gh8r/ed4A0IL5w4bqyhRAHAtAWbLte
	hXrstyhDRkUp/+nNoif9aFZCjk99GLdrocCBv+LFcmzUfBfxSgskFFWGgywzpZ6QzFXZ
	9sdgCd/HSJ7P2pu66i0l6v7x4NdJErkhBQOhPtxPn4bqGO04Sfr9XjyoIT8bd7eAzU/s
	LUm7iNTmrO26jFZhnnwTbcXMa7g0fMeDixLOrnmtAvFg/+9EyeILuvhUMKaqXLV3RN5F
	QBUg==
X-Gm-Message-State: APjAAAUo05Cn9QMcNeHSTkFUGDstAyeScA11Qa29alfYKxOSBpDCpiYs
	1KZRET8nKPFUFhAiVBifwfg=
X-Google-Smtp-Source: APXvYqykp0nPjxbLdmI1+XpdsVn4OgnZU33TnUmlbey4croxqeGYUX0KVN/qmsxzm5+AOc7PZrrmFg==
X-Received: by 2002:a62:e412:: with SMTP id r18mr19485759pfh.207.1554240294663;
	Tue, 02 Apr 2019 14:24:54 -0700 (PDT)
Received: from [10.188.84.210] ([206.121.102.138])
	by smtp.gmail.com with ESMTPSA id
	t12sm28470732pfl.59.2019.04.02.14.24.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Apr 2019 14:24:53 -0700 (PDT)
To: Tom Rini <trini@konsulko.com>, Jon Mason <jdmason@kudzu.us>
References: <854544cb-aab1-1a9d-9e98-0f39663ca621@gmail.com>
	<b08083fc2f63f6324a652706f8343a0b8defe209.camel@linuxfoundation.org>
	<a1416fe3-04fb-1d37-eaef-05b9a838254e@gmail.com>
	<6068e963-94c1-7225-2c60-9ae027c74639@windriver.com>
	<CAPoiz9yat-4XRgSFikh5PxrsgVpRAWNi2dx1O0+_iHyVR529Ag@mail.gmail.com>
	<20190402194738.GZ4664@bill-the-cat>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <56e2b936-177c-7066-99c0-bb46854daa4b@gmail.com>
Date: Tue, 2 Apr 2019 14:24:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190402194738.GZ4664@bill-the-cat>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [oe] [OE-core] Git commit process question.
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
X-List-Received-Date: Tue, 02 Apr 2019 21:24:56 -0000
X-Groupsio-MsgNum: 44607
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="kmFSbKfNATamUmkQwWrEFz66pW5JofYRN"

--kmFSbKfNATamUmkQwWrEFz66pW5JofYRN
Content-Type: multipart/mixed; boundary="EjcxwKrJpXF4KfP316oM0k8RUmygTODU0";
 protected-headers="v1"
From: akuster808 <akuster808@gmail.com>
To: Tom Rini <trini@konsulko.com>, Jon Mason <jdmason@kudzu.us>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
 Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>
Message-ID: <56e2b936-177c-7066-99c0-bb46854daa4b@gmail.com>
Subject: Re: [oe] [OE-core] Git commit process question.
References: <854544cb-aab1-1a9d-9e98-0f39663ca621@gmail.com>
 <b08083fc2f63f6324a652706f8343a0b8defe209.camel@linuxfoundation.org>
 <a1416fe3-04fb-1d37-eaef-05b9a838254e@gmail.com>
 <6068e963-94c1-7225-2c60-9ae027c74639@windriver.com>
 <CAPoiz9yat-4XRgSFikh5PxrsgVpRAWNi2dx1O0+_iHyVR529Ag@mail.gmail.com>
 <20190402194738.GZ4664@bill-the-cat>
In-Reply-To: <20190402194738.GZ4664@bill-the-cat>

--EjcxwKrJpXF4KfP316oM0k8RUmygTODU0
Content-Type: multipart/alternative;
 boundary="------------ACF619984FBE2BEC09B40A67"
Content-Language: en-US

--------------ACF619984FBE2BEC09B40A67
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 4/2/19 12:47 PM, Tom Rini wrote:
> On Tue, Apr 02, 2019 at 04:45:16AM +0000, Jon Mason wrote:
>> On Tue, Apr 2, 2019 at 6:41 AM Mark Hatle <mark.hatle@windriver.com> w=
rote:
>>> On 4/1/19 6:20 PM, akuster808 wrote:
>>>>
>>>> On 4/1/19 4:02 PM, Richard Purdie wrote:
>>>>> On Mon, 2019-04-01 at 15:33 -0700, akuster808 wrote:
>>>>>> Hello,
>>>>>>
>>>>>> I have noticed a large number of git commits with no header
>>>>>> information being accepted.
>>>>> Can you be more specific about what "no header information" means? =
You
>>>>> mean a shortlog and no full log message?
>>>> Commits with just a "subject" and signoff. No additional information=

>>> If you can convey the reason for the change in just the subject, that=
 is
>>> acceptable.. but there is -always- supposed to be a signed-off-by lin=
e according
>>> to our guidelines.
>>>
>>> So if you see this, I think we need to step back and figure out where=
 and why
>>> it's happening and get it resolved in the future.
>>>
>>> (Places I've seen in the past were one-off mistakes and clearly that =
-- so it
>>> wasn't anything that we needed to work on a correction.)
>>>
>>> --Mark
>>>
>>>> We tend to reference back to how the kernel does things.
>>>>
>>>> https://www.kernel.org/doc/html/latest/process/submitting-patches.ht=
ml
>>>> These two sections in particular.
>>>>
>>>>
>>>>     2) Describe your changes
>>>>
>>>> Describe your problem. Whether your patch is a one-line bug fix or 5=
000 lines of
>>>> a new feature, there must be an underlying problem that motivated yo=
u to do this
>>>> work. Convince the reviewer that there is a problem worth fixing and=
 that it
>>>> makes sense for them to read past the first paragraph.
>>>>
>>>>
>>>> along with this section.
>>>>
>>>>
>>>>     14) The canonical patch format
>>>>
>>>> This section describes how the patch itself should be formatted. Not=
e that, if
>>>> you have your patches stored in a |git| repository, proper patch for=
matting can
>>>> be had with |git format-patch|. The tools cannot create the necessar=
y text,
>>>> though, so read the instructions below anyway.
>>>>
>>>> The canonical patch subject line is:
>>>>
>>>> Subject: [PATCH 001/123] subsystem: summary phrase
>>>>
>>>> The canonical patch message body contains the following:
>>>>
>>>>       * A |from| line specifying the patch author, followed by an em=
pty line
>>>>         (only needed if the person sending the patch is not the auth=
or).
>>>>       * The body of the explanation, line wrapped at 75 columns, whi=
ch will be
>>>>         copied to the permanent changelog to describe this patch.
>>>>       * An empty line.
>>>>       * The |Signed-off-by:| lines, described above, which will also=
 go in the
>>>>         changelog.
>>>>       * A marker line containing simply |---|.
>>>>       * Any additional comments not suitable for the changelog.
>>>>       * The actual patch (|diff| output).
>>>>
>>>>
>>>>     - Armin
>> There are existing git hooks that can be used to detect and fail to
>> merge patches like this.  For Linux, I have the following in
>> .git/hooks/pre-commit
>> #!/bin/sh
>> exec git diff --cached | scripts/checkpatch.pl -
> FWIW, over in U-Boot land I do:
> ./scripts/checkpatch.pl -q --git origin/master..
> as part of checking things prior to pushing to master.
Having hooks is fine but after the fact. It puts the burden back on the
Layer maintainer to resolve. If we think more info is better, it needs
to happen at time of change submittal.

- armin
>
>


--------------ACF619984FBE2BEC09B40A67
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On 4/2/19 12:47 PM, Tom Rini wrote:<br=
>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:20190402194738.GZ4664@bill-the-cat">
      <pre class=3D"moz-quote-pre" wrap=3D"">On Tue, Apr 02, 2019 at 04:4=
5:16AM +0000, Jon Mason wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">On Tue, Apr 2, 2019 at 6:4=
1 AM Mark Hatle <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:mark.ha=
tle@windriver.com">&lt;mark.hatle@windriver.com&gt;</a> wrote:
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">
On 4/1/19 6:20 PM, akuster808 wrote:
</pre>
          <blockquote type=3D"cite">
            <pre class=3D"moz-quote-pre" wrap=3D"">

On 4/1/19 4:02 PM, Richard Purdie wrote:
</pre>
            <blockquote type=3D"cite">
              <pre class=3D"moz-quote-pre" wrap=3D"">On Mon, 2019-04-01 a=
t 15:33 -0700, akuster808 wrote:
</pre>
              <blockquote type=3D"cite">
                <pre class=3D"moz-quote-pre" wrap=3D"">Hello,

I have noticed a large number of git commits with no header
information being accepted.
</pre>
              </blockquote>
              <pre class=3D"moz-quote-pre" wrap=3D"">Can you be more spec=
ific about what "no header information" means? You
mean a shortlog and no full log message?
</pre>
            </blockquote>
            <pre class=3D"moz-quote-pre" wrap=3D"">Commits with just a "s=
ubject" and signoff. No additional information
</pre>
          </blockquote>
          <pre class=3D"moz-quote-pre" wrap=3D"">
If you can convey the reason for the change in just the subject, that is
acceptable.. but there is -always- supposed to be a signed-off-by line ac=
cording
to our guidelines.

So if you see this, I think we need to step back and figure out where and=
 why
it's happening and get it resolved in the future.

(Places I've seen in the past were one-off mistakes and clearly that -- s=
o it
wasn't anything that we needed to work on a correction.)

--Mark

</pre>
          <blockquote type=3D"cite">
            <pre class=3D"moz-quote-pre" wrap=3D"">We tend to reference b=
ack to how the kernel does things.

<a class=3D"moz-txt-link-freetext" href=3D"https://www.kernel.org/doc/htm=
l/latest/process/submitting-patches.html">https://www.kernel.org/doc/html=
/latest/process/submitting-patches.html</a>
These two sections in particular.


    2) Describe your changes

Describe your problem. Whether your patch is a one-line bug fix or 5000 l=
ines of
a new feature, there must be an underlying problem that motivated you to =
do this
work. Convince the reviewer that there is a problem worth fixing and that=
 it
makes sense for them to read past the first paragraph.


along with this section.


    14) The canonical patch format

This section describes how the patch itself should be formatted. Note tha=
t, if
you have your patches stored in a |git| repository, proper patch formatti=
ng can
be had with |git format-patch|. The tools cannot create the necessary tex=
t,
though, so read the instructions below anyway.

The canonical patch subject line is:

Subject: [PATCH 001/123] subsystem: summary phrase

The canonical patch message body contains the following:

      * A |from| line specifying the patch author, followed by an empty l=
ine
        (only needed if the person sending the patch is not the author).
      * The body of the explanation, line wrapped at 75 columns, which wi=
ll be
        copied to the permanent changelog to describe this patch.
      * An empty line.
      * The |Signed-off-by:| lines, described above, which will also go i=
n the
        changelog.
      * A marker line containing simply |---|.
      * Any additional comments not suitable for the changelog.
      * The actual patch (|diff| output).


    - Armin
</pre>
          </blockquote>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">
There are existing git hooks that can be used to detect and fail to
merge patches like this.  For Linux, I have the following in
=2Egit/hooks/pre-commit
#!/bin/sh
exec git diff --cached | scripts/checkpatch.pl -
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
FWIW, over in U-Boot land I do:
=2E/scripts/checkpatch.pl -q --git origin/master..
as part of checking things prior to pushing to master.</pre>
    </blockquote>
    Having hooks is fine but after the fact. It puts the burden back on
    the Layer maintainer to resolve. If we think more info is better, it
    needs to happen at time of change submittal.<br>
    <br>
    - armin<br>
    <blockquote type=3D"cite"
      cite=3D"mid:20190402194738.GZ4664@bill-the-cat">
      <pre class=3D"moz-quote-pre" wrap=3D"">

</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------ACF619984FBE2BEC09B40A67--

--EjcxwKrJpXF4KfP316oM0k8RUmygTODU0--

--kmFSbKfNATamUmkQwWrEFz66pW5JofYRN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJco9MjAAoJEO6LtJn0Vuf56nUP/2IZrhcjzVp+mr29oGCC2SCl
ZFzVOcsnyebCzTHwZkS0Ge5yfhZ3rjPQXCq0jhcZHZW/1bfSwMpl0g8fjwo6tADi
/w9ZMLbc/m08SaG9KvgPSrV0JZAjGAqk62f7yLZ0YMQyJrhrRnO8rA9pSPsk3z//
1M8rYEMQBTP6S30yqo+qumO1/b5QDEBefD5r+t4Pv+HbhAfKYV+fP94F/y93j6Fl
j9vVq9FdiRy/k9LrfFcUHRgWtfvg8/15G17LzSivQd4O/QQ6CkEEeNk2nuyavTo7
wXuyowpUn5RkjII+PcdKCoQ5ce6Y0s9M8MqBV9qI8xsFtpwLxkyEPVfE81qCcLTK
SVLLDsIPYaZqrtNc5FmNDxopEInrkkipkdmnbMmZm4P0bYT+TfxgFkJoYvY+LU/8
BZ0Al8DIdXy3RSduubNt2Cm7u6Skj/mQKdWuMFKesU5yzDPSxT80KFQvAKL2xeNF
VXHXvfLYb9Nw/qp0i61FejBe8EK/XZagQt94ZIIWlF8imCaCHlD9nix3RbDf+KBN
RMud1cwpJi+vgf5F8xCR7UxluXajeTCS4c0xppmAemG4n/+ziQE9qSQROqzBUns/
44z7SD9nGMTbmiiV0menabGzdRMuszyj3wyW7ALlIhf+W3kbik8/cwF5WMOPDJr0
hr8mNYpXcHBDJMJ0LXKT
=pXtA
-----END PGP SIGNATURE-----

--kmFSbKfNATamUmkQwWrEFz66pW5JofYRN--
