Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30D8EE00CD5; Mon, 29 Jul 2019 08:20:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ABC2E00CB9
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 08:20:29 -0700 (PDT)
Received: by mail-pg1-f171.google.com with SMTP id l21so28425419pgm.3
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 08:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=tpFrV8S26e74w0xOrMqgIq4s3/LrYHXE3/zhgr3mwmY=;
	b=POzJ4Rt9f8xOEa7deEQblCMLE4vO0B5u9PPhBnZkzLx2GQaHJ0sav/Exaidvfvv2QW
	gnkrF0IJGrZMTJtrxYhmTx9svoe8tMlLrK1iF68vXr4TZUL9uRiHNFsj+WnpBVFgqssI
	0pqm9zbnCohPO+11YEGaXCe0R+QhU88s5zxyuJ1Mznru5BWbWDb3s0Bjzh6WOk1SWiYk
	52Z4IVCxEaZPluvlE3ZoPSvUvDAG6KCkV/E//FYqDLNmflZEek326bQDLM5ymT0Ll7LH
	deE7lnXY5KdfusPuZ7zV4Gxbi9nomZ1ZGIxojRLwMWzjJIIkCMxDVlRxrrMTG3f54qvw
	yP/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=tpFrV8S26e74w0xOrMqgIq4s3/LrYHXE3/zhgr3mwmY=;
	b=ER4xoaabxSgbHV1AUS8LqO3xvUR1mhjW/m5Dq1YkJlpr0iIDu/b0dK5oR0LHfheltM
	4/98NRMfD6owB0XIgMV2T89yEEcu2O9BVrrHyLze5XqAN6Ad5XFzbEiM8tjoV994rOhq
	+SKvFTefcUANAfBYRNLw8+JAqaBrxbJWXnpI+GNILfUUDrbpPCOmjod0cy/oDFYS0QE4
	LdBwqmjomoGhJ3/blK1GV/KR3yhnOPabh47r+55jNyPeLxfUGfil826HUl3fR3OHI/HT
	hrynDhDhJA6dNsJZR/HzDWdfffa7XkwfGZ4FuEyYtHvzKlykN4pZ8QzVgpcnuoCDe0ga
	rkUQ==
X-Gm-Message-State: APjAAAWnPFu3oGmLyvXL4cvUg1Wrb9RD7XHgiTfz6XCzsW1dmmVPEVUq
	ey8Zi3CKqXGMYpGOhZiX/TVAk+ZD
X-Google-Smtp-Source: APXvYqxioFuPpBSZJbY7ARpltJnCyz8je8PGSIFAfXJb352c2EkesfsN1O+e+ybWxDDgKPfWIKYY7Q==
X-Received: by 2002:aa7:9a92:: with SMTP id w18mr37215832pfi.167.1564413628548;
	Mon, 29 Jul 2019 08:20:28 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	g2sm78078821pfb.95.2019.07.29.08.20.26
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Jul 2019 08:20:27 -0700 (PDT)
To: Shravan Singh <shravan@bluesparq.com>, yocto@yoctoproject.org
References: <CABjzrPQGehM6Vb-5UgvhE1tM5nEj90vpZM_2ZcjA0+eQ_2k5oA@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Openpgp: preference=signencrypt
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
	mQENBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
	Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
	/Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
	cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
	3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
	AAG0KlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPokBNwQTAQgA
	IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
	3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
	txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
	lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
	Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
	zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvuQENBFhQFAQBCADXoLKCuF48
	5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
	RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
	w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
	svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
	tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAGJAR8EGAEIAAkFAlhQFAQC
	GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
	s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
	fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
	Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
	P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
	ROZj4g==
Message-ID: <4c027ff9-3573-d247-e8a5-1c867a98832e@ibeeto.com>
Date: Mon, 29 Jul 2019 08:20:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <CABjzrPQGehM6Vb-5UgvhE1tM5nEj90vpZM_2ZcjA0+eQ_2k5oA@mail.gmail.com>
Subject: Re: Meta-raspberrypi
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
X-List-Received-Date: Mon, 29 Jul 2019 15:20:30 -0000
X-Groupsio-MsgNum: 46121
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="tXekdBoKc7tEDBGZgQbpnJNNdxO2SOiUZ"

--tXekdBoKc7tEDBGZgQbpnJNNdxO2SOiUZ
Content-Type: multipart/mixed; boundary="lM4v3ezipBw8zCT85zwyDWXaUwynDqtw1";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Shravan Singh <shravan@bluesparq.com>, yocto@yoctoproject.org
Message-ID: <4c027ff9-3573-d247-e8a5-1c867a98832e@ibeeto.com>
Subject: Re: [yocto] Meta-raspberrypi
References: <CABjzrPQGehM6Vb-5UgvhE1tM5nEj90vpZM_2ZcjA0+eQ_2k5oA@mail.gmail.com>
In-Reply-To: <CABjzrPQGehM6Vb-5UgvhE1tM5nEj90vpZM_2ZcjA0+eQ_2k5oA@mail.gmail.com>

--lM4v3ezipBw8zCT85zwyDWXaUwynDqtw1
Content-Type: multipart/alternative;
 boundary="------------CB70B403F3590D35D2FCE11F"
Content-Language: en-US

--------------CB70B403F3590D35D2FCE11F
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Shravan,

You need to checkout warrior from your meta-raspberrypi repo that you
cloned. It looks as it is on the latest master.

:rjs

On 7/22/19 3:07 PM, Shravan Singh wrote:
> Hello All,
>
> I am trying to create a base image for raspberry-pi cm3(compute module =
3)
>
> I am using warrior-21.0.1
> I downloaded meta-raspberry-pi from=C2=A0
> https://git.yoctoproject.org/git/meta-raspberrypi
> I added the layer in bblayer.conf and I have changed the machine
> variable in local.conf
> to *raspberrypi-cm3*
> I am using oe-init-build script to generate the base files
>
> Now when I run the command
> bitbake core-image-base
>
> I get the below mentioned error
> Error: No recipes available for:
> /home/blue/yacto/meta-raspberrypi/recipes-bsp/u-boot/u-boot_2019.07.bba=
ppend
> /home/blue/yacto/meta-raspberrypi/recipes-multimedia/gstreamer/gstreame=
r1.0-omx_1.16%.bbappend
>
>
> Any help with this?
>
>
> Regards,
> Shravan Singh
> (239) 243-0838
>
> Blue Sparq, Inc.
> 928 NE 24th Lane unit 4 and 5.
> Cape Coral, FL 33993
>
> IMPORTANT: The contents of this email and any attachments are
> confidential. They are intended for the named recipient(s) only. If
> you have received this email by mistake, please notify the sender
> immediately and do not disclose the contents to anyone or make copies
> thereof.
>
--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


--------------CB70B403F3590D35D2FCE11F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi Shravan,</p>
    <p>You need to checkout warrior from your meta-raspberrypi repo that
      you cloned. It looks as it is on the latest master.</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 7/22/19 3:07 PM, Shravan Singh
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CABjzrPQGehM6Vb-5UgvhE1tM5nEj90vpZM_2ZcjA0+eQ_2k5oA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hello All,</div>
        <div><br>
        </div>
        <div>I am trying to create a base image for raspberry-pi
          cm3(compute module 3)</div>
        <div><br>
        </div>
        <div>I am using warrior-21.0.1 <br>
        </div>
        <div>I downloaded meta-raspberry-pi from=C2=A0
          <a rel=3D"vcs-git"
            href=3D"https://git.yoctoproject.org/git/meta-raspberrypi"
            title=3D"meta-raspberrypi Git repository"
            moz-do-not-send=3D"true">https://git.yoctoproject.org/git/met=
a-raspberrypi</a>
          <br>
        </div>
        <div>I added the layer in bblayer.conf and I have changed the
          machine variable in local.conf</div>
        <div>to <b>raspberrypi-cm3</b></div>
        <div>I am using oe-init-build script to generate the base files</=
div>
        <div><br>
        </div>
        <div>Now when I run the command <br>
        </div>
        <div>bitbake core-image-base</div>
        <div><br>
        </div>
        <div>I get the below mentioned error <br>
        </div>
        <div>Error: No recipes available for:</div>
        <div>/home/blue/yacto/meta-raspberrypi/recipes-bsp/u-boot/u-boot_=
2019.07.bbappend</div>
        <div>
/home/blue/yacto/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1=
=2E0-omx_1.16%.bbappend</div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>Any help with this? <br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>
          <div>
            <div dir=3D"ltr" class=3D"gmail_signature"
              data-smartmail=3D"gmail_signature">
              <div dir=3D"ltr">
                <div>
                  <div dir=3D"ltr">
                    <div>
                      <div dir=3D"ltr">
                        <div>
                          <div dir=3D"ltr"><span
                              style=3D"background-color:rgba(255,255,255,=
0)"></span>Regards,<br>
                            Shravan Singh<br>
                            (239) 243-0838<br>
                            <br>
                            Blue Sparq, Inc.<br>
                            928 NE 24th Lane unit 4 and 5.<br>
                            Cape Coral, FL 33993<br>
                            <font size=3D"1"><br>
                              IMPORTANT: The contents of this email and
                              any attachments are confidential. They are
                              intended for the named recipient(s) only.
                              If you have received this email by
                              mistake, please notify the sender
                              immediately and do not disclose the
                              contents to anyone or make copies thereof.<=
/font><br>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
  </body>
</html>

--------------CB70B403F3590D35D2FCE11F--

--lM4v3ezipBw8zCT85zwyDWXaUwynDqtw1--

--tXekdBoKc7tEDBGZgQbpnJNNdxO2SOiUZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl0/DrkACgkQjYyoKScz
m3UlEQf9EljIpHLyx+jbD72eLf+LreRZcS+Sof55yayvXLv4Q02IadI3oiR5hJKP
NhLl+IpvNrKPQjKZNMFhsugalsugf/Bfq3Jw10+dyopWcJkzryitsNPt7QaLrwZ7
2smFNlcPjzvq3ErECahAAtHlIQP0wxWVWnOTQCPd5qqK9l+xxN4ouzcnP0YFknd8
eGUXY7wUdYaSDmkFytp9RddwzBm+NF5i6JdpnKv29ka7Fr4vYHnRQjVBfd2fkwW3
OTvgMh744DfAF87Cdqb2Fvav1yMBEadW/1le2kkDGxuJVyrVzd6cRoQ5b9yahzLt
QcsYRzw/fUaAiZUVlfoGysJVSXbNwg==
=vVHH
-----END PGP SIGNATURE-----

--tXekdBoKc7tEDBGZgQbpnJNNdxO2SOiUZ--
