Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41B37E009FA; Thu, 26 Jan 2017 13:39:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08853E009A0
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 13:39:18 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id d5so23259865uag.0
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 13:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=5qp0jFO8uKNptB5l3gwMrNOHwahflaawd+bmPe6X2aQ=;
	b=qN4/c7ZcMkxXvqdnhVudVmiVSu0wznyL10xWZwAiSPFOI87irpU6+a7xfU9nfEvdEe
	fL/ZrDs8WnoNxd8HG09TwgtAnHClo925szGtVOnElv9IRpdCXzU8y1zxl1JerdWktzGF
	Irpofxkkdo3YiVXtCMcIMA83Ds6cvghTg4oKkmrZW4JLPFTh+PkmOTIVR62HxIZ4eD3o
	S+iG7RTN8cgbiQLH2IZCGMdv+854BVg99BxZNPAtxFYeI5kuzfD6Mbk7jle55h8qOjMy
	A0upJRrwROEpZdEK9ySCotcv7vn7rqoJjZiliBYIPBAEfWPTch6DpU1hqfQqVs5H83P+
	OfPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=5qp0jFO8uKNptB5l3gwMrNOHwahflaawd+bmPe6X2aQ=;
	b=FCq7A4uNv2mzczuV1Rz7tL2+JEaKk5q3sQ7IXx8ECLZNH/1MuyCQpXpy3qA6JZjLsJ
	6plv9SF+av7tQXnaTCHfjIlQ/KG+k4830erHmJPvkswHjHg5bNUTLzcl0x1APfXjLOHs
	EFTBPAW87szmCJJsAbrxNDcxJDISJkRDntIr29TJOJc3acF7pwKwzrOB5JtqdP6TTcnk
	cxm3dAKVA6VdNrvKzTvtH3JWGqRKGHY2arLSDEzBiY9ypKolwrhOwc46ItYppGQcr79B
	N8v2n51nWlHxsquH/1irISyC21yIb9uJ5lGS0Sj92RPy6EZBh7R6dDqvZWJlCe+t1y4c
	PEYg==
X-Gm-Message-State: AIkVDXJzT/8l2/CEY7BTg8Y7fmY5KP1ke3AwXEVI8dUSdL0o7SvIOFTtsngBQTreSw7naL4SO9x6PqIlLuVJ/A==
X-Received: by 10.176.0.149 with SMTP id 21mr2760698uaj.81.1485466758020; Thu,
	26 Jan 2017 13:39:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.91.68 with HTTP; Thu, 26 Jan 2017 13:39:17 -0800 (PST)
In-Reply-To: <bbd8fb9d-8215-c73f-f4aa-b20523291ec0@balister.org>
References: <65082de4-2ba6-3b18-1845-00b2d637404e@balister.org>
	<CALbNGRSrXLdfUK3U2bXr20P+fFm4ROArGPRi9Ag=AhXbGjUv+g@mail.gmail.com>
	<bbd8fb9d-8215-c73f-f4aa-b20523291ec0@balister.org>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Thu, 26 Jan 2017 22:39:17 +0100
Message-ID: <CALbNGRT_H_Vz8b6vcfgJGWYEyVw6og4+zKmLjLZ6P+2O0oY6eA@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] OpenEmbedded Stand at FOSDEM
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
X-List-Received-Date: Thu, 26 Jan 2017 21:39:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 5, 2017 at 4:30 PM, Philip Balister <philip@balister.org> wrote=
:
> On 01/03/2017 08:13 PM, Andreas M=C3=BCller wrote:
>> On Tue, Jan 3, 2017 at 4:32 PM, Philip Balister <philip@balister.org> wr=
ote:
>>> Every year since 2007, OpenEmbedded has a stand at FOSDEM
>>> (http://www.fosdem.org)
>>>
>>> From the first year:
>>>
>>> https://www.flickr.com/photos/32615155@N00/405229708/in/album-721575945=
61002629/
>>>
>>> Belen and I are sort of organizing this, but both of us are also
>>> involved in devrooms, so we will need a lot of help manning the stand
>>> and getting some demos together.
>>>
>>> Demos should try and show how the project makes embedded work easier, b=
y
>>> showing tools and/or cool examples of devices using Linux built with
>>> OpenEmbedded. In previous years, we've shown toaster with data collecte=
d
>>> from demos on the table. Collections of devices running images built
>>> from the same recipe and interesting products using Linux by OpenEmbedd=
ed.
>>>
>>> I'm happy to try and organize demos and staffing, but I could really us=
e
>>> some help this year, so if you are in a position to tak ethe lead on
>>> operating the stand, that would be a huge help to me and the rest of th=
e
>>> project.
>>>
>>> Thanks,
>>>
>>> Philip
Nobody?

Andreas

