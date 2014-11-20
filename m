Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDD67E008C3; Thu, 20 Nov 2014 02:32:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8125BE007BA
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 02:32:44 -0800 (PST)
Received: by mail-qa0-f43.google.com with SMTP id bm13so1710552qab.16
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 02:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=fT0JYHEsOxkKJE+Vomn0I72mNTbkplccBG8O2qXd19c=;
	b=Gksrq5sfz+uAs3Y5hVJ0zaa3KxcxPnTYBc5nS3RqMnaCPcDxW/4ksECzlVODyPdT5/
	jaeXymk1CkRvQceTGUDKHFUVOvrij6lMw4/a0Gnrl/6wyOHTJUAptJydOuQz+ZKH84eU
	ju8UX59SmjhwQ/3lGvtWPve1LpY+RAC4H0FYTnxl+kONdKyQ4G14pHrdiOceLkMt8/CA
	hYeHjnIwpS1ijA9ryXefll2AFAG4/lftJnM41wY4awUM0MwrYuDqNqhmUaBuCxwzUETp
	xN+nPCZPCzoOTgkg6YIgHB8eoBxjH3+OJIOXEt8u549dWPhXVVXr1f1jy7CjcdtOT+VS
	Wg1A==
X-Received: by 10.140.23.198 with SMTP id 64mr58114544qgp.62.1416479563935;
	Thu, 20 Nov 2014 02:32:43 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.140.143.146 with HTTP; Thu, 20 Nov 2014 02:32:03 -0800 (PST)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 20 Nov 2014 10:32:03 +0000
X-Google-Sender-Auth: Lubh2dGy70PsdB835_uvA_fPDRs
Message-ID: <CANyK_8fnHw+R1F1nXiM8so-XMYm-34qU4e6f44XHsfTC-YeJ+A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: FOSDEM 2015 Embedded devroom Call For Participation
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
X-List-Received-Date: Thu, 20 Nov 2014 10:32:48 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I've seen this CFP elsewhere but not on any Yocto Project related
lists. I'm reposting it incase anyone has missed it. It'd be good to
see some Yocto Project talks at FOSDEM 2015!

Call For Participation (CFP)
Embedded devroom FOSDEM 2015

Devroom date: Saturday January 31st and February 1st 2015 in Brussels,
Belgium

CFP deadline: Monday December 1st 2014
Final notification two weeks later, December 15th 2014

CFP Introduction
----------------------
Embedded software is transforming the world, and FOSS embedded software is
leading the way. From automotive to the Internet of Things, small devices,
embedded systems, industrial process control and automatons are beginning
their inevitable rise to the singularity. Join in! Or be assimilated. ;)

NB: This year FOSDEM plans to record all presentations, no exceptions.
Please only propose a talk that you're really able and willing to share.

Topics Sought
------------------
The embedded devroom seeks topics related to automotive, mobile,
autonomous, and generally small systems. Related areas are of course of
interest as well and our definition of "embedded" is elastic. Are you
controlling and launching rockets, made your own set-top box, built some
heating control for your house, hacked your mobile phone or just built a
small gadget using FOSS software then you might have exactly what we're
looking for. This year the automotive devroom has been merged into the
embedded devroom so automotive projects are for sure on topic here too.

CFP Schedule And Submission Details
----------------------------------------------------
Please submit proposals no later than the first of December.

Please use the following URL to submit your talk to FOSDEM 2015:

https://penta.fosdem.org/submission/FOSDEM15

and follow the following rules:

    * Select as the Track "embedded devroom".

    * Include a title.  (Note that "Subtitle" entry doesn't appear on
all conference documents, so make sure "Title" can stand on its own without
"Subtitle" present.) Also try to make it catchy and descriptive of what you
will talk about. For example "Launching rockets with an Arduino" and not
"Programming a microcontroller for aerodynamic control"

   * Include an Abstract of about 500 characters and a full description of
any length you wish, but in both fields, please be concise, but clear and
descriptive.

   * Indicate whether you seek a 25 or 45 minute slot.

   * Use the "Links" sub-area to your past work in the field you'd like to
share.

   * Affirmative confirmation that you agree to CC-By-SA-4.0 or Cc-By-4.0
licensing of your talk, in the "Submission Notes" field. Add a statement
such as this:  "Should my presentation be scheduled for FOSDEM 2015, I
hereby agree to license all recordings, slides and any other materials
presented under the Creative Commons Attribution Share-Alike 4.0
International license.  Sincerely, s/YOUR_NAME/"

   * Also in the notes field, note your affirmative confirmation of
availability to speak on Saturday 31 January or 1 February 2015 in
Brussels. Also mention if you plan to do a demo and if you have special
requirements.

   * Make sure you give a valid email so we can contact you easily in case
we have more questions or want to make sure you received the confirmation.
Should you have any questions we can send more information as needed.

Thank you very much and we look forward to reviewing your proposals!

-- Philippe and Jeremiah along with the other members of
the FOSDEM embedded devroom team.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

