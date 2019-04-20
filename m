Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFDA7E00D40; Fri, 19 Apr 2019 18:00:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 841BEE00AB0
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2019 18:00:26 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id i21so5022126iol.7
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2019 18:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=741BhOhGWX/nhYcbbuJCzzOGZssu/5vP6k/8+XYroSk=;
	b=mVJgCYTVCGfl/O4SQA5VDJq1acv2+rq0H4zf7Zg6sPGW1uNnr6rVzxwWGJBP6yBZdg
	lwitwx1fXP0cdnjko1QxQ3wGsaySQosZbiwbkC0Oshcl6qX9vr7dKpCOA3lMragdT11c
	/z/h+a7y1WnnCz9E3jKJwXUxN28F8AaaosVCNQJ9mdI0S+/X0DV6iCJYHzEnQ++lMZ4J
	RubEiNZ5iRTwoFGwdzPcr4IlsN6YaN+Vqv5YMDPjuNKmGQ3jT5XstO8yvOdtNnkeiuJ9
	F9hveMl4Bx7UWV69VtcjokH6b68DCyPjSOt0TntPwcDqVdjADE23zkUtnpCJ4kIJB4SZ
	kTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=741BhOhGWX/nhYcbbuJCzzOGZssu/5vP6k/8+XYroSk=;
	b=kvSptR9EN0deDiI3lyTFSWk/859DeMBQm8fhxr6SAD5OGel1uFfArYWh7DrvSG2HPu
	9+c3ffjVmIjPilHZ+Regm7EwlJGzAlE6UGngy36ILJAEF/Jo6SNfhoj2YnvPhY5jtexf
	m2rsoXBRArfpCTgdhhjy+x/1SjjKQ8qzoI/5XdTE7dUh9WgvEf0JEky6+COUa0RA0sIk
	pLIKZm9ZbzqddapXPaIUmcXPLiEehUPRk2JJtyNhjwwCOfM+rloj2KbkXHYwXOh6fOJB
	NNB43PXW1XzLHmuI2NwYM/JeiLOESF9vvfPiLbGLqGQ2jwl+K4cvB1iUVegRJuSmSNNV
	oNPg==
X-Gm-Message-State: APjAAAV0SgvCcTYhvY8EPgS6mdpPWIqOLsGZAgA752JYAYWsatz8XWvU
	rqbZXyFW2kZbPsurbSmd7s+CeHSXfXwXSNNzzljZAw==
X-Google-Smtp-Source: APXvYqxU7ExM3y25w8hPMmFnn7PYngX2weHiF7dQdFniprj1GPoR7SDhsRIKBRKGSrmeNj9/10NtZrES6x+yBWmive4=
X-Received: by 2002:a05:6602:224d:: with SMTP id
	o13mr165565ioo.78.1555722025705; 
	Fri, 19 Apr 2019 18:00:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:91bd:0:0:0:0:0 with HTTP; Fri, 19 Apr 2019 18:00:25
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Sat, 20 Apr 2019 11:00:25 +1000
Message-ID: <CAA=hcWQk+gOfOU6LsHWFcLtZJ9V9VfTfGRXDMfLD_0gAA1QqBQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: What is the right SRC_URI syntax for git@bitbucket.org?
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
X-List-Received-Date: Sat, 20 Apr 2019 01:00:27 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Sorry for a new starter questions, I searched Internet, there are a
few examples to set up:

SRC_URI = "git://<username>@bitbucket.org/<account name>/<repository
name>.git;protocol=ssh";branch=${BRANCH}"

Not only that does not work, I have set up the public key to access
the git bitbucket repository:

$ ssh -v git@bitbucket.org

The Yocto also complained SRCREV, following some blog to add the
SRCREV = "${AUTOREV}" that not work either.

Thank you.

Kind regards,

- jh

