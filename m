Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0771E00AAA; Thu, 23 Mar 2017 09:12:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62254E00777
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 09:12:45 -0700 (PDT)
Received: by mail-pg0-f44.google.com with SMTP id w20so23481990pgc.0
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 09:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version; bh=e8TeoQQOKxerinla/uqQFqMPnQfxwSUM1PJ5CE168aA=;
	b=TzW/O7UWY1XEitrbrzX5+lMjqIFouaLReLSZTszAvs+H3HutLf0aYwJeESqvlVOBhG
	zYlulN9m8wTZ70jnNtrajxpApOHnyiLuxgI7Ytq6rv3n8jZNnXhqNCt9jWRH0CowIusP
	CTPMHttVVSsLYg7Sk1XslS09hzPavAX5czx2isxqadDg0UuBMejfyq5Khc1zqWr4bng4
	LwUJOXC9HOM5Gc07tRRBhyfOysoTodXjGSUfR+R1jXNy2Hr6ZYJxGaNcinR6fGg04gMu
	MO6gHU6yyUriEkR22SsB55YAyOX9711y1mn/YdHH2c10WJeCJfFqg9lEXHuAHdl5UhPS
	DlQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version;
	bh=e8TeoQQOKxerinla/uqQFqMPnQfxwSUM1PJ5CE168aA=;
	b=kZHWJT+MhRaSsGWvBDc3vbAg/HHaZ12fnUl9cEXZR/PeZ2rouwRGCG+XgWrfsHP3rz
	tM61fHEGucQn508rQ/ZWCpd1zACwMVDKjKoF9bxOHadPJTZgCWP4u1xN2jIWtUeP6Qy7
	YxuRsje7s4NVECGXr/nVP07XksBtfS6sJM3Gjs5y3gvVMM5e7SRi0LVuMcFwUWUup9bR
	A4YSxSCgrHRCTagTgaBiRtC/jeSffqlg7iqyQqCPu1Ir0kw2ksp5+HOhZXbilZfR94VR
	HsJS0C7b/0HnZag9iU+ymV7NiRj0HfocAg+oH3t3zyi6HJFC9f8czDVnSwT/GXmqmFPS
	85SA==
X-Gm-Message-State: AFeK/H2JwFOHwvSYCl3zZTBb2zonclkpLGt3D0dj8dkxh3Ikmu0sXhOKmXzLVmYKYQuQWw==
X-Received: by 10.84.129.2 with SMTP id 2mr4496356plb.119.1490285565414;
	Thu, 23 Mar 2017 09:12:45 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-63-100.sd.sd.cox.net.
	[68.7.63.100]) by smtp.gmail.com with ESMTPSA id
	s203sm11260313pgs.57.2017.03.23.09.12.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Mar 2017 09:12:43 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 Mar 2017 09:12:42 -0700
Message-ID: <2055463.LFt8TPVBoM@rjs-zotac.streifs.net>
In-Reply-To: <CALDHXteLqNAHVw+QAkQhDA7VH8JhKxpe2ftJTwfWVXY6g_Yomw@mail.gmail.com>
References: <CALDHXteLqNAHVw+QAkQhDA7VH8JhKxpe2ftJTwfWVXY6g_Yomw@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: ERROR: libreoffice-5.0.5.2-r0 do_package
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
X-List-Received-Date: Thu, 23 Mar 2017 16:12:47 -0000
X-Groupsio-MsgNum: 35191
Content-Type: multipart/signed; boundary="nextPart6905022.CWc1lI4pdf";
	micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart6905022.CWc1lI4pdf
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Ravikiran,

> 
> 
> *ERROR: libreoffice-5.0.5.2-r0 do_package: QA Issue: File
> '/usr/lib/libreoffice/share/extensions/mysql-connector-ooo/libmysqlclient_r.
> so' from libreoffice was already stripped, this will prevent future
> debugging! [already-stripped]*

This error message is produced by the packaging QA. It means that the 
libreoffice's build system (make files) has already stripped the debug symbols 
from the library.

There are two ways to fix this:

The better way: Examine the make files to see where the debug symbols are 
being stripped. Create a patch so that they are not stripped during the 
regular build process. This will allow YP/OE to create the debug package with 
binaries that include the debug symbols and the regular package with the 
binaries without the debug symbols.


The quick fix: Skip this QA check by adding

INSANE_SKIP_libreoffice += "already-stripped"

to the libreoffice recipe.


:rjs

> WARNING: libreoffice-5.0.5.2-r0 do_package: libreoffice language file
> pattern not found:  /usr/lib/libreoffice/share/template/%{1}
> 
> 
> *ERROR: libreoffice-5.0.5.2-r0 do_package: Fatal QA errors found, failing
> task.ERROR: libreoffice-5.0.5.2-r0 do_package: Function failed:
> do_packageERROR: Logfile of failure stored in:
> /home/kamama-yocto/yocto/poky/build/tmp/work/cortexa15hf-neon-poky-linux-gnu
> eabi/libreoffice/5.0.5.2-r0/temp/log.do_package.23588* *ERROR: Task
> (/home/kamama-yocto/yocto/poky/meta-packages/meta-office/recipes-libreoffice
> /libreoffice/libreoffice.bb:do_package) failed with exit code '1'*
> NOTE: Tasks Summary: Attempted 8443 tasks of which 8385 didn't need to be
> rerun and 1 failed.
> 
> Summary: 1 task failed:
> 
> /home/kamama-yocto/yocto/poky/meta-packages/meta-office/recipes-libreoffice/
> libreoffice/libreoffice.bb: do_package
> Summary: There were 2 WARNING messages shown.
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
> 
> 
> what is the issue and how to solve this ?
> 
> 
> Best Regards,
> Ravikiran


-- 
Rudolf J Streif

--nextPart6905022.CWc1lI4pdf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJY0/P6AAoJEIZ1K5Tj0cm6ig8IAJqmHZotrF1dvS4vISNyqXxd
sZjDbXEDZv8OEu7mfn/+0Hc2rnFk75NSY1HYEWKZKm/TgQplIo4/8dDrtTrqL6hD
ryXKGdOAqLF1XbaIKJVLjYkRmqpIAgTK1s+fE9Fqw6Vno7sfZvJ8RjI1bhkMD+DO
VCxxWVnTt55v1t71zFtA1raB/jjJe+eIp/2uce3oWXyDhIMzZP6MQUvAzujtArGP
G8Os6kHytGuBerqlHD26y/rXDpX54muOnGJyzq0dKwurM6jsZ9YotUgrXGtH0V28
1L0jHnik+yFlFZTRrpYEZh/lS7ZoE0d6bilZ4DnGeb2zpzb8kDmelQVVr+W0th8=
=1mPH
-----END PGP SIGNATURE-----

--nextPart6905022.CWc1lI4pdf--
