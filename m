Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C6CBE0030A; Fri, 11 Jul 2014 09:00:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED48DE002AA
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 09:00:44 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id hu12so1338630vcb.29
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 09:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type:content-transfer-encoding;
	bh=4UJZUiFtKieTISM1wZGLZGDhENjA0npcxutJd0ds/B4=;
	b=yiFCLUNeCW7WyFHxmDtzFOSXcptY7Zi544mrivTFSWFA4xuBDU3uLqOIm6ZBh7JQE/
	ZnicvHnp9k0kfLMyhcOjLTfhpOex6b0U/nTAqSMckM3Ka2J6sb4Zhc35SYOsJTLPZDCy
	bWMerpBJ9UmlTiIaSKzFqRRzp/7yOOIfYlih5SPc9zENgaxPTt1od0M1j0MzIyRq99v9
	1QOiRUPYZLt4Aj9v2FpVIWoXWk8gdFXifViSh5giYb8SdoOGkED/xPX+MDRIjBMyq/BS
	8GRrkQ0ITlcgLBDHXGDG2A4z5EEeKfA0jw5tkIJ3sJqKKxRmBROwQlTTS2eFMOMVSRqA
	tozw==
X-Received: by 10.220.251.134 with SMTP id ms6mr19751403vcb.10.1405094444182; 
	Fri, 11 Jul 2014 09:00:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.105.233 with HTTP; Fri, 11 Jul 2014 09:00:14 -0700 (PDT)
In-Reply-To: <CAF_dkJC121L=5shvVvOebHJRodDRRrRqNxo1dBvbgCVP2bLrCQ@mail.gmail.com>
References: <CAF_dkJC121L=5shvVvOebHJRodDRRrRqNxo1dBvbgCVP2bLrCQ@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Fri, 11 Jul 2014 12:00:14 -0400
Message-ID: <CAF_dkJDiZopad1JGwpk-JJPoQFtOpB1PenH2MWAcSj5nqCP0Ng@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is it possible to prevent a package from updating the shared state cache?
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
X-List-Received-Date: Fri, 11 Jul 2014 16:00:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

For anybody (such as myself) who might stumble across this thread later=E2=
=80=A6

I just wanted to build a recipe without tainting my sstate cache.  (I
wanted to build from a different bzr repository and didn't want to
"contaminate" my sstate cache, or even worse, confuse it with a
different version of revsion 1234 from the other repository).  So I
went with:

Run the cleansstate task
Bitbake my one particular recipe
Copy the generated output for the particular test I wanted to run to
the particular test system on which I wanted to run it.
Run the cleansstate task again to clean up after myself.

I'm open to suggestions for better ways to accomplish this.

--wpd


On Thu, Jul 10, 2014 at 3:00 PM, Patrick Doyle <wpdster@gmail.com> wrote:
> Suppose I always wanted Yocto to process a particular recipe local to
> a project and never to consult the shared state for that recipe.  Is
> there some way to mark a recipe to do this?
>
> --wpd

