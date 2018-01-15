Return-Path: <nickaein.i@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81DD4E00D94; Mon, 15 Jan 2018 05:14:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickaein.i[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02D68E0085E
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 05:14:11 -0800 (PST)
Received: by mail-qk0-f169.google.com with SMTP id w1so16742978qka.2
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 05:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2d+OvSUg81Jtzbx6nCHIphDLk+1li7DSlF024ex6WFw=;
	b=sqMI82eKpvJDcWzg9+fIddqFVLKEH1Jhp5AKDiOySc6Myfsz2Uc7yWJ8xem/oYb60W
	ad6khCbVg8rkYV7fqm5sGCf4GxeXZ/i3tZuv1FdxqtaFNVGdvviTvMg5MoXqPpsnt6YA
	giKTBI9Xw5nvO+zEaVy1OqG5EJLglzxB+jdSKnDLQ1Tc74PeRiWUv1tC2X1PppolTu3q
	fuEV2DJr+vtgwv2ekBhXewXj0uUYBaRBcIfcRpK241Exgfw4NUJGtLrE9HaLp4eeAL53
	PcWFUXtmo8vMr4qKbvrSOP9T+ClqHq9VsJn9irLGZtkQjGfiEB3BsUakN84SAwEgs3NB
	11ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2d+OvSUg81Jtzbx6nCHIphDLk+1li7DSlF024ex6WFw=;
	b=LOFfu2Ofk8+3pq5qdbrTOcDIT5k0pwiISLCecahRdSxMjb224N+L6IFa/nqe9dcq7Z
	q1pZu40BrixYQHOZggnEv3+QpkY/cJVryVLG1rYulhP+Koy/1gzIovjkJSyPSbJVXlH6
	bw83kT26vsojgPH+b0vkXwSaLMmok9S9AWHDbAEsTBg/OpxcHfe4ntqJ5rUxPn2e4ZWn
	9lio5GEP2FAr57SdGrHirctazE2xXJWEMcYfaZmaKkYZgL+Qd08nv+LsFoa4e5KPRs9E
	9cMUXS7hOszfINLbYGV43IkQ5woFWWRp45YLPKCwlprWY55dNWUjYaUz0x50V0DfcN2h
	+MEA==
X-Gm-Message-State: AKwxytf50TUdhdlSOovERepNlMK1iep21/Ia+jaCv2bOtHwEEcIEQd2h
	SUzKy8lvEzgPeNJwwlH+23XY1T4hHhSsPnRppVI=
X-Google-Smtp-Source: ACJfBoveXP2wPIsDuPhH8vvj/7DT9i+671kOKLxEpiCegcfM+fVIm8Th29A/KPa5FNI0PCxw1iwB2XAXVydeVonPneE=
X-Received: by 10.55.143.193 with SMTP id r184mr48860515qkd.191.1516022051143; 
	Mon, 15 Jan 2018 05:14:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.214.82 with HTTP; Mon, 15 Jan 2018 05:13:40 -0800 (PST)
In-Reply-To: <C0207330DF60C5409302EC78C3FE68F34B0AAD@PGSMSX105.gar.corp.intel.com>
References: <CA+NJmkd7Rzt47Uv=orAaLvgS8RC9=Ok_gk8hoZaBgxMRsJMXtw@mail.gmail.com>
	<C0207330DF60C5409302EC78C3FE68F34B0AAD@PGSMSX105.gar.corp.intel.com>
From: Isaac Nickaein <nickaein.i@gmail.com>
Date: Mon, 15 Jan 2018 16:43:40 +0330
Message-ID: <CA+NJmkdJnEUdxrUZDTrE-nDWrNsVweovs-VTuxkxwUL2wCc5hQ@mail.gmail.com>
To: "Mittal, Anuj" <anuj.mittal@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: conf/machine/<machine.conf> in my custom layer doesn't get parsed
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
X-List-Received-Date: Mon, 15 Jan 2018 13:14:12 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Anuj,

On Mon, Jan 15, 2018 at 4:00 PM, Mittal, Anuj <anuj.mittal@intel.com> wrote:
> Have you defined BBPATH in your layer.conf correctly?


I guess so. Here is relevant lines in layer.conf for BBPATH:

# We have a conf and classes directory, add to BBPATH
BBPATH .= ":${LAYERDIR}"

# We have recipes-* directories, add to BBFILES
BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
        ${LAYERDIR}/recipes-*/*/*.bbappend \
        ${LAYERDIR}/*.bb"

BBFILE_COLLECTIONS += "samim-saba"
BBFILE_PATTERN_samim-saba = "^${LAYERDIR}/"
BBFILE_PRIORITY_samim-saba = "99"


And this is the layout of conf directory of my layer:

yocto@yocto-server:/opt/yocto/rocko-poky/poky/meta-samim-saba/conf$ find
.
./layer.conf
./machine
./machine/colibri-imx6.conf
yocto@yocto-server:/opt/yocto/rocko-poky/poky/meta-samim-saba/conf$

