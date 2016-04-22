Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21AA0E00F23; Fri, 22 Apr 2016 02:31:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A34FEE00C31
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 02:31:37 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id 127so8562647wmz.0
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 02:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=HV7VseAGaR2rjWj/UXHWypD8wyWIswOH6DN6gdkqqHw=;
	b=mB/rWYo88jaKW0wTkxHYmoHnBrNVC+lRk32jEb0HDsvx82rfauorDZg4v4V374Qoti
	nF2UY0efVEkPI77kCw4++DSWmVcYJUz7OHcsYiVpH9rAJwymN1G7617DnI76jfjZiRKb
	vBLVUkiIPNFz5HB8hwkdPo+wxQbyamLeWe9hqJdJfDqGEGVihsZuMxVP07TUCLaFDjM/
	8mu2dqt1O6i+D6alhDyD1IxPHm6S1a/KHTekK4EQqvGod+1WSSdZITqkKW6b1HQ65Ab7
	MYVEWoNYjBZPQMZr+qC+3PKr+kdPG8Ywa8I7K5WgANXH9CcDWUrJ8ygi0hPRS87jdJnS
	UuYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=HV7VseAGaR2rjWj/UXHWypD8wyWIswOH6DN6gdkqqHw=;
	b=fhuLT3cRRCU/U1tWbS5Fo1EAiymtxST2Yzlm9TA/OzHLgEPCPaIxSs6Uk5Wi0kiIDH
	H+mDCVO5oWrdt4q6t9e806bYyo9zeN1me+BG2bC6rOWe1em+C281cdb4GIPG+e9h9FGF
	X9+jqxvswoQWBsnWM/JUT81Y7ljpFtUoyb99A+Vb/YLwekdec9/ceIJrLbmZM3b1cHHW
	cICpmy95n3bavFZyzBkcRf8VpyqHozOR8o6clHDiJr4HRgUplBnMj7SJdXH3lDlMsHOC
	ToLRUR7xrKo2QKTcrft6dWPo2IXYgfu56vIX5o4TqyJUTqg25kIwGFhgE4Edac7fCETW
	Fr+A==
X-Gm-Message-State: AOPr4FXsT+xvJfP3lINQVXI+x1OEIu2tD64xnQXCoBNCGeYkc8uXS9Dcv1UxAoL2xa5xhg==
X-Received: by 10.194.179.200 with SMTP id di8mr19137129wjc.50.1461317496148; 
	Fri, 22 Apr 2016 02:31:36 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	q77sm2386023wmd.12.2016.04.22.02.31.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 Apr 2016 02:31:34 -0700 (PDT)
Date: Fri, 22 Apr 2016 11:31:32 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Theodor Gherzan <theodor@gherzan.ro>
Message-ID: <20160422093132.GD29750@resin>
References: <1461267759-10268-1-git-send-email-theodor@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1461267759-10268-1-git-send-email-theodor@gherzan.ro>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V2 1/4] firmware.inc: Update firmware to include various serial fixes
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
X-List-Received-Date: Fri, 22 Apr 2016 09:31:44 -0000
X-Groupsio-MsgNum: 29582
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="W5WqUoFLvi1M7tJE"
Content-Disposition: inline

--W5WqUoFLvi1M7tJE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 21, 2016 at 08:42:36PM +0100, Theodor Gherzan wrote:
> From: Theodor Gherzan <theodor@resin.io>
>
> Signed-off-by: Theodor Gherzan <theodor@resin.io>
> ---
>  recipes-bsp/common/firmware.inc | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index c1117d6..abc7d06 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,5 +1,5 @@
> -RPIFW_SRCREV ?= "046effa13ebc4cc7601df4f06f4834bd0eebb0f8"
> -RPIFW_DATE ?= "20160326"
> +RPIFW_SRCREV ?= "c5e131971c323f5658c7c5d4b1dd105d37903a99"
> +RPIFW_DATE ?= "20160303"
>  RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>  RPIFW_S ?= "${WORKDIR}/git"

Merged to master (along with the other patches in the series). Thanks.
Some minor modifications added (README).

--
Andrei Gherzan

--W5WqUoFLvi1M7tJE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIbBAEBCAAGBQJXGe90AAoJEHO76Gt+erfPaN0P+LdJPjgEnNi0Mx79TAGhZhs5
0zUZQxyblGH8tWrZn8HJsft5K868/sr2ZSlUnIjRxAXyRf96Vwm903RyRkHG0zmv
tSZQINnrUQJ8oKIP9jVoKUUhjCFc/0HkSvYmme1s19+ZBDnTjITgXMKRtPFdMp9Y
Bsv+Bt0D7X6jTerD/yWkdppw8DPx9JkOIMubjxKtsv7RN74+gJZySIcLgTUlOSlD
cJzZE7TqsujyCXhBAzVyovi437mRSGtqh0W4fenCIz8qVnfIaHQf8QNU6jXvF+Jj
9fWT6QYlU+TQugoJobkgdBXsNwQ97gauZjhqnT0W+oRyTW4JMw4LC2EOdH/jv/mB
/zYi+FD6hrC6ivTvGgoaFAl/NRlahIFIE5xcldL3xSqPlkc4/myx6s/fZ+0EqLEn
K/bUYP+4NTe8PHu0W8ofSfl+hhbOMxKNkok034pqnDS2DGP28lykOQMwJreI1sk8
qxVRML46ZFuAAyvFp/fQfwu59hynZ8yYnlngSCh1tDu2hJSnvAx8qu8VdK+G7qaT
ij6vZvZv41WgHuMRy6eRWSV2dFCWomoorM7jDpR2DmtTChq86Ssvl6q7fUGjUu2P
J+NcHSZ672skv1vaNJvF9Mor/rj9cA8XTMsBjZqQ27c9W5kliVAAg6HqeIkA5qir
AQMMB3H6gWqjSm3QD8M=
=UhoA
-----END PGP SIGNATURE-----

--W5WqUoFLvi1M7tJE--
