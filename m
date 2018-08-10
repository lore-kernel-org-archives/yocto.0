Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D58ADE0086B; Fri, 10 Aug 2018 11:45:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFF10E006F1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 11:45:03 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id c13-v6so9143630wrt.1
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 11:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2OM4yr/oGvuvL6Auy3mI0vZdxoV3+DWeZJHtVh8i7hc=;
	b=XEWCS6F2D/f7Xja0PGtctw04946qycVMwhWwsvFEbJEbsbUAodYKA9PjpuGTzbkUVQ
	QDOyc1saMQD8s84TfOentVCWP9+NxxVuaF6qd6RpJuYS/gD2GWAoMTyZpkr61gQAt+gz
	4BrfmO7Y7doLhO3Z6goLJvB7kPCK5RRupah3JiG0rEwhUFotJJ53YcIaR6f8JaCKoC4W
	/W9ADDtjSijNtwoEi4Yvd2ww4CtjB1KOzcv3nipDQQSiuayDftzPwcE4FnRri3gR/mZz
	P5olL4yyDuwj93b6ylam7rxIQntP3VYO8BKDSH0NeLJgrT09BLtjbi+YwhdZcoPOJucL
	gj3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2OM4yr/oGvuvL6Auy3mI0vZdxoV3+DWeZJHtVh8i7hc=;
	b=h8zlVJ8PMaB8CUDVZlbjfzdVQPlh2aIX7e5Jj0U/tagiI6ZZiNpT/t27bkiyq+YqED
	fYe62vJ8g39eGk5Ls6oCbMOo120cqYcHLU4Cl1UbbJEbK6tKRjxk52UXSAjz8AoWKuUG
	qTdr3IlPjNDpconNp2lFT8vwRug7EHvGb422DT38aRAihRzFaL3idpUMaCFBI6hnh0BZ
	G/k5pwWLMOaTisuVreqmdFN/tlBwg37fmbsFBDx4aSr/IMJhn/0ofAeSQH/Jc9Zj4Kwx
	poy+Vd9zpwHFoN/khSaGesyVdYYxuz/QKu8Vd21vtu/I+w69xt0XbPo2KOlGd+ooVfIy
	lgPg==
X-Gm-Message-State: AOUpUlHoqOVRf3tTwzLI3pqAxtOAqCAvp74QpZRKj1fzC+sxETL0ZXac
	J+vNK54b4/Ptg0o0kSedw7+1GNwrmedxHL3DmA==
X-Google-Smtp-Source: AA+uWPz8CY7oaHCkTWoES9lsM6CVBoHj+PNG1kb3Vc+9vmn36t1iqWen2ExImt5dm3gwqrLcjhwjrLZd/df9caxFlLE=
X-Received: by 2002:adf:bacf:: with SMTP id
	w15-v6mr5164778wrg.203.1533926702841; 
	Fri, 10 Aug 2018 11:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <1533555294-11187-1-git-send-email-ptsneves@gmail.com>
	<CAFNP8OvEmH364jxPfASjE+4xR-RyZvozPWKTu1hr+KVE-xRh7g@mail.gmail.com>
In-Reply-To: <CAFNP8OvEmH364jxPfASjE+4xR-RyZvozPWKTu1hr+KVE-xRh7g@mail.gmail.com>
From: Paulo Neves <ptsneves@gmail.com>
Date: Fri, 10 Aug 2018 20:44:50 +0200
Message-ID: <CAJO0J4jk-ZtY_t41qb9cJ4L+sPguSFkumRoVS5EvpMU69o2zgA@mail.gmail.com>
To: srifenbark@gmail.com
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto-docs] documentation: Updated testimage targets.
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
X-List-Received-Date: Fri, 10 Aug 2018 18:45:04 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Scott,

Regarding the other instances of Systemd-bootTarget I will try to grep
for them and fix them.
Regarding the truncation It is a mistake on my part. Do you know how I
can generate the manual to be sure that I do not have mistakes like
that?

Regarding the file, my apologies. You cannot find it because the
changes which this manual changes relate to have not yet been
accepted. I was a bit caught off guard by the fact that the
documentation and open-embedded mailing lists are separate so I did
not think that I should only submit documentation changes after the
OE/poky and others are accepted. When I produced my changes I did it
in the poky git repository, and split the documentation ad-hoc. I will
submit the documentation with the fixes you proposed after my other
commits are accepted. My apologies for the time wasted.

Paulo Neves


On Mon, Aug 6, 2018 at 11:12 PM Scott Rifenbark <srifenbark@gmail.com> wrote:
>
> Paulo,
>
> I have some questions on this commit for the dev-manual.
>
> See inline comments from me....
>
>
>
> On Mon, Aug 6, 2018 at 4:34 AM, Paulo Neves <ptsneves@gmail.com> wrote:
>>
>> The documentation of available names for TEST_TARGET have
>> been updated to match the convention of using the
>> class names of controllers.
>>
>> Signed-off-by: Paulo Neves <ptsneves@gmail.com>
>> ---
>>  documentation/dev-manual/dev-manual-common-tasks.xml |  8 ++++----
>>  documentation/ref-manual/ref-variables.xml           | 19 ++++---------------
>>  2 files changed, 8 insertions(+), 19 deletions(-)
>>
>> diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
>> index 0cb967f..2fcdad0 100644
>> --- a/documentation/dev-manual/dev-manual-common-tasks.xml
>> +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
>> @@ -11400,7 +11400,7 @@
>>                              within a separately started QEMU or any
>>                              other virtual machine manager.
>>                              </para></listitem>
>> -                        <listitem><para><emphasis>"Systemd-bootTarget":</emphasis>
>> +                        <listitem><para><emphasis>"SystemdbootTarget":</emphasis>
>>                              Choose "Systemd-bootTarget" if your hardware is
>
>
> There are many instances of the term "Systemd-bootTarget" remaining in the manual.  I assume they also will need to convert to "SystemdbootTarget"?
>
>>
>>                              an EFI-based machine with
>>                              <filename>systemd-boot</filename> as bootloader and
>> @@ -11459,10 +11459,10 @@
>>              </section>
>>
>>              <section id='selecting-systemd-boottarget'>
>> -                <title>Selecting Systemd-bootTarget</title>
>> +                <title>Selecting SystemdbootTarget</title>
>>
>>                  <para>
>> -                    If you did not set <filename>TEST_TARGET</filename> to
>> +                    If you did not set <filename>TEST_TARG
>
>
> Looks like an early truncation of the line that is used for the replacement?  Should be "If you did not set <filename>TEST_TARGET</filename> to"
>
>>                      "Systemd-bootTarget", then you do not need any information
>>                      in this section.
>>                      You can skip down to the
>> @@ -11472,7 +11472,7 @@
>>
>>                  <para>
>>                      If you did set <filename>TEST_TARGET</filename> to
>> -                    "Systemd-bootTarget", you also need to perform a one-time
>> +                    "SystemdbootTarget", you also need to perform a one-time
>>                      setup of your master image by doing the following:
>>                      <orderedlist>
>>                          <listitem><para><emphasis>Set <filename>EFI_PROVIDER</filename>:</emphasis>
>> diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
>> index 2465553..a61fee6 100644
>> --- a/documentation/ref-manual/ref-variables.xml
>> +++ b/documentation/ref-manual/ref-variables.xml
>> @@ -15162,35 +15162,24 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
>>                      You can provide the following arguments with
>>                      <filename>TEST_TARGET</filename>:
>>                      <itemizedlist>
>> -                        <listitem><para><emphasis>"qemu" and "QemuTarget":</emphasis>
>> +                        <listitem><para><emphasis>"QemuTarget":</emphasis>
>>                              Boots a QEMU image and runs the tests.
>>                              See the
>>                              "<ulink url='&YOCTO_DOCS_DEV_URL;#qemu-image-enabling-tests'>Enabling Runtime Tests on QEMU</ulink>"
>>                              section in the Yocto Project Development Tasks
>>                              Manual for more information.
>>                              </para></listitem>
>> -                        <listitem><para><emphasis>"simpleremote" and "SimpleRemoteTarget":</emphasis>
>> +                        <listitem><para><emphasis>"SimpleRemoteTarget":</emphasis>
>>                              Runs the tests on target hardware that is already
>>                              up and running.
>>                              The hardware can be on the network or it can be
>>                              a device running an image on QEMU.
>>                              You must also set
>>                              <link linkend='var-TEST_TARGET_IP'><filename>TEST_TARGET_IP</filename></link>
>> -                            when you use "simpleremote" or "SimpleRemoteTarget".
>> +                            when you use "SimpleRemoteTarget".
>>                              <note>
>>                                  This argument is defined in
>> -                                <filename>meta/lib/oeqa/targetcontrol.py</filename>.
>> -                                The small caps names are kept for compatibility
>> -                                reasons.
>> -                            </note>
>> -                            </para></listitem>
>> -                        <listitem><para><emphasis>"GummibootTarget":</emphasis>
>> -                            Automatically deploys and runs tests on an
>> -                            EFI-enabled machine that has a master image
>> -                            installed.
>> -                            <note>
>> -                                This argument is defined in
>> -                                <filename>meta/lib/oeqa/controllers/masterimage.py</filename>.
>> +                                <filename>meta/lib/oeqa/controllers/simpleremote.py</filename>.
>
>
> I cannot find any file named "meta/lib/oeqa/controllers/simpleremote.py" in the poky repository.  Is this file you are specifying correct for a reference to the "SimpleRemoteTarget" parameter?
>
>>                              </note>
>>                              </para></listitem>
>>                      </itemizedlist>
>> --
>> 2.7.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

