Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32C97E00572; Tue, 24 Jun 2014 06:03:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8D04E00507
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 06:02:57 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id id10so253474vcb.38
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 06:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=t6WSFRXD+uHUco4Nh8RbeT5HnQvbMBXN45pRkg/rbjk=;
	b=wx9koOS8VWtag7A+AWhPYZhLGJcTBcjMcOmPLfckIDYKspsnOiQQbVY+cohXMJyDKw
	k38rMCuY/RH8nVjMZdQPOfpMLbiFDKirqG2nTg8yX7SQ82zSclxVcKW2fADxyCb8p4oI
	eYFS3N4CJqri9+uOZlCU5hPS5AXCyW+3bV6q9nck+EKLcdxflQjsyJgzfUtvWdqSFkpl
	n1lbXd0f2OPuYdKG0t7jBZcfVNd85NhaIFL9/TUWzQvTe3Qqn6GKZjov8B9nQ3CobmeN
	1k4Ro1iW4hfp/j7viJRyMyo4semiHtGdu/NwnHPIcM6sMZb9bvyDMzOJLWKzoZ/+zMCG
	v+qw==
X-Received: by 10.220.143.81 with SMTP id t17mr131261vcu.76.1403614976552;
	Tue, 24 Jun 2014 06:02:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.105.233 with HTTP; Tue, 24 Jun 2014 06:02:25 -0700 (PDT)
In-Reply-To: <CAJTo0Lbwhi88Qx4K3Q=bYAkv044KPYrEVFGCRsW9=uG4Qd7hOg@mail.gmail.com>
References: <CAF_dkJActcO2Yje0EAN7bO2zaPKP9DZA9D1pqCwp3oJbA8-cFw@mail.gmail.com>
	<CAJTo0Lbwhi88Qx4K3Q=bYAkv044KPYrEVFGCRsW9=uG4Qd7hOg@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 24 Jun 2014 09:02:25 -0400
Message-ID: <CAF_dkJC0omi65BkJOiFH=P5FoeWsY0VP_f-hz_HSO-9GFup_wA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the simplest, or better yet, canonical way to add a shell script to core-image-minimal?
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
X-List-Received-Date: Tue, 24 Jun 2014 13:03:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Gaurang, Ross, and Nicolas,
Thank you for your suggestions.  I ended up implementing Ross's
suggestion (before I got even got his suggestion) because it was the
only answer I could come with on my own where all the pieces made
sense.  I originally asked the question out of a (most likely
misguided) sense that creating a recipe simply to install a shell
script was too heavyweight.  I thought there might be a simpler way to
do that than writing a recipe like:

<code>
DESCRIPTION =3D "My specific shell script[s] that get installed in the root=
fs."
LICENSE =3D "CLOSED"

SRC_URI =3D "file://my_script.sh"

do_install () {
    install -d ${D}${bindir}
    install -m 755 ${WORKDIR}/my_script.sh ${D}${bindir}
}
</code>

=E2=80=A6 and then adding  custom-scripts recipe to CORE_IMAGE_EXTRA_INSTAL=
L.

Once I finished writing the recipe, I realized it was much simpler
than I thought it would be.  Thanks for providing the infrastructure
that made that so easy.

--wpd




On Tue, Jun 24, 2014 at 5:50 AM, Burton, Ross <ross.burton@intel.com> wrote=
:
> On 23 June 2014 16:56, Patrick Doyle <wpdster@gmail.com> wrote:
>> Should I create a core-image-minimal.bbappend file with a SRC_URI
>> pointing to my script and a do_install rule to install it?
>
> Create a new recipe for the script and then add it to the image.
>
> The documentation is useful:
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#exten=
dpoky
>
> Ross

