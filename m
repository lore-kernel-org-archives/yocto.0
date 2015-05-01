Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F10AE009C7; Fri,  1 May 2015 05:26:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF2CAE009BC
	for <yocto@yoctoproject.org>; Fri,  1 May 2015 05:26:17 -0700 (PDT)
Received: by wgin8 with SMTP id n8so89417964wgi.0
	for <yocto@yoctoproject.org>; Fri, 01 May 2015 05:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=/5fqJybJUd12wYN7Vb/BxlmXBG0+JyfglhBTA+/zNzw=;
	b=xJbgsxNDcdAlOgSDw2ratP7UarXviC/T5SvWa75bEXtRCEGMXwsvpjYeY2nJFy8ve4
	a5ZXfxzNi1OiMBKvbkLh1qFG3fnG7icQZ45pi2gunuhYHUQ3VJrshhA8tgG19dWJ7B6f
	duyA3McmWY8pxQ1il5MxerPqZa/Npdetca2bJoOI3xCKN/K8f1pRUzuLI2MLs5J923wK
	7HjMw17tysVG4HDu9k1lObTc7rxRMMOW1DJQTAf4lO7oyOjQrrXaAAvLn7OVl66dFzCj
	/fT2NfGHQL9n3KeCBFFPQy8lYMaPeoN/HwFDh/8s+hNZP3M+GTRVRYq95swWAVa2zMIX
	7yiQ==
X-Received: by 10.180.82.135 with SMTP id i7mr14561281wiy.68.1430483176483;
	Fri, 01 May 2015 05:26:16 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id dq4sm6565479wid.17.2015.05.01.05.26.15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 May 2015 05:26:15 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 1 May 2015 14:26:31 +0200
To: Joshua Lock <joshua.lock@collabora.co.uk>
Message-ID: <20150501122631.GB2366@jama>
References: <1430478583.3318.15.camel@collabora.co.uk>
MIME-Version: 1.0
In-Reply-To: <1430478583.3318.15.camel@collabora.co.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: First set of fido-next changes are in testing
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
X-List-Received-Date: Fri, 01 May 2015 12:26:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 01, 2015 at 12:09:43PM +0100, Joshua Lock wrote:
> All,
>=20
> There have been a lot of patches proposed for fido so I wanted to let
> you know that I have just submitted a first fido-next test build to
> the autobuilder.
>=20
> The full set of changes can be seen in my fido-next branch:
>=20
> http://git.yoctoproject.org/cgit/cgit.cgi/poky
> -contrib/log/?h=3Djoshuagl/fido-next

Is it the same as:
=46rom git+ssh://git.openembedded.org/openembedded-core-contrib
 * [new branch]      joshuagl/fido-next -> contrib/joshuagl/fido-next
?

And shouln't this e-mail go to oe-core ML?

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

