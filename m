Return-Path: <mulhern@gmail.com>
Received: from mail-qe0-f41.google.com (mail-qe0-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20155E002FB;
	Tue, 27 Aug 2013 15:14:15 -0700 (PDT)
Received: by mail-qe0-f41.google.com with SMTP id x7so3028963qeu.28
	for <multiple recipients>; Tue, 27 Aug 2013 15:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=1f/irA1iEwmlMwZgmnN00fF/uSu7SI67LQuYjpOElDM=;
	b=xokap8lfJBaOMQmgi/wlgc95uOTsvdtG1dAQxY48hmlyE6kUD75IsVVE9I4YiQIHsK
	cO6HtU8CS6o0OZ3gmc4uf3ASEUostE7omcv017qz4xBad2u9JDepaRhuiLwcFrZLEm2P
	l2Rq1csiqEDIA5so98wCGeAftPjdG2UURJiy2MTl3kFCHTyGOwc/TAVRVDoIAigiMqy/
	mOoTtLvZxAVP4zdXtCT3483k8I2a/AaYUq+7AborlMwqUi+ggQDetje4QDNbTvrq52op
	8v5H1a/pu1JtRQCERDrCCP227h3k+HsgGcVL32Nr3z/ysMDjNRHz8Kl9GiivNInfmWhs
	EaJQ==
X-Received: by 10.49.47.113 with SMTP id c17mr4388779qen.90.1377641654705;
	Tue, 27 Aug 2013 15:14:14 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-67-186-188-91.hsd1.ma.comcast.net.
	[67.186.188.91])
	by mx.google.com with ESMTPSA id a7sm30703728qeg.2.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 27 Aug 2013 15:14:13 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Tue, 27 Aug 2013 18:14:10 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Tue, 27 Aug 2013 18:13:59 -0400
Message-Id: <cover.1377641309.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH 0/6] [meta-security] Bastille bug fixes and enhancements
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
X-List-Received-Date: Tue, 27 Aug 2013 22:14:18 -0000

The patches in this set consist of a number of actual bug fixes and a few
enhancements. The two enhancements are:

1) A change in the semantics of the -l flag so that it lists configuration
files even if Bastille has not been run previously.
2) A change in the distributions are inferred, specified, and observed so that
a distribution can always be specified and so that a specified distribution
overrides an inferred distribution when they are different.

At this point, the Bastille screens will show the appropriate questions and
when the questions have been responded to it will write out the responses to
the config file.

The two significant things that it cannot do, but that the documentation claims
that it does are:

1) Test the system on which it is run for answers to the questions.
2) Make changes to the system based on those answers. 

Clearly, code has at one time been written to effect those changes on some
systems. But the following things don't work, and appear to be due to bugs
in the existing code base rather than errors in the set-up.
1) After the answers have been given InteractiveBastille is supposed to 
not only write out the responses to the config file but invoke BastilleBackEnd
so that it makes the changes. The implementation does not do this correctly.
The method that is invoked for this purpose is
Run_Bastille_with_Config. The definition of this comment has above it the
comment "Not used in HP-UX. Run_Bastille_with_Config may be dead code in all
OS-s." which does not inspire confidence. The invocation has been removed,
so that the screen flicker that it causes will go away.
2) If it were the case that "bastille -b" were effective, i.e., if bastille
could be run so as to apply the contents of the config file to the system,
problem (1) would not be so serious. But this is not the case. Instead,
Bastille encounters a variety of fatal errors in the Bastille source, arising,
at least in part, from a propensity to invoke HP-UX specific code regardless
of the distro.
3) Bastille is quite unable even to assess the status of a system with regard
to the questions asked. In its current state, the result of an assessment is
a file with no entries. This can be changed with relative ease, so that the
code that will attempt to discover the answers to the relevant questions is
executed. However, in that case, the same fatal errors as described in point
(2) are encountered.
4) Generally speaking, the code appears to be bug-ridden. Attempting to fix it
to the point that it actually works might actually be more expensive and less
rewarding than starting from scratch.

Perhaps this version of Bastille could be kept as a record of
decisions made about the appropriate issues to address for security on
Yocto distributions, but no further effort be made to fix it. Instead, some
other alternative could be found to achieve the same results. Here are two
possibilities:

1) OpenScap's oscap tool (open-scap.org). This tool is all about security
and the source code repository was last updated a few days ago. It might
work nicely with the Script Check Engine for XCCDF which is described at
pvrabec.livejournal.com/887.html.

2) Puppet (puppetlabs.com) is more general and is about configuring anything
at all for various purposes. It has some associated applications, including
Facter (which finds out facts about the system on which it is running). These
applications have been written in Ruby.
The following changes since commit 600a74468bf6d2e2f865e7d7c70e68c60c829234:

  lib-perl: Change description to match package. (2013-08-20 08:39:35 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib mulhern/bastille-final
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mulhern/bastille-final

mulhern (6):
  Bastille: Preliminary cleanup of existing patches.
  Bastille: Miscellaneous fixes to the Bastille code base.
  Bastille: change in behavior of bastille -l.
  Bastille: accept and observe --os flag in multiple situations.
  Bastille: set Yocto specific questions via config file.
  Bastille: document the current status and usability of the Bastille
    install.

 README                                             |   44 +-
 recipes-security/bastille/bastille_3.2.1.bb        |   21 +-
 .../files/Curses-and-IOLoader-changes.patch        |   50 ---
 .../bastille/files/accept_os_flag_in_backend.patch |   28 ++
 .../bastille/files/allow_os_with_assess.patch      |   37 ++
 .../bastille/files/call_output_config.patch        |   13 +
 .../bastille/files/do_not_apply_config.patch       |   34 ++
 .../bastille/files/edit_usage_message.patch        |   26 ++
 .../bastille/files/find_existing_config.patch      |   58 +++
 .../files/fix_missing_use_directives.patch         |   48 ++
 .../bastille/files/fix_number_of_modules.patch     |   32 ++
 ...rd-patch.patch => fixed_defined_warnings.patch} |   32 +-
 .../bastille/files/organize_distro_discovery.patch |  470 ++++++++++++++++++++
 .../remove_questions_text_file_references.patch    |   24 +
 .../bastille/files/set_required_questions.py       |  135 ++++++
 .../bastille/files/simplify_B_place.patch          |   34 ++
 .../files/upgrade_options_processing.patch         |   85 ++++
 17 files changed, 1080 insertions(+), 91 deletions(-)
 delete mode 100644 recipes-security/bastille/files/Curses-and-IOLoader-changes.patch
 create mode 100644 recipes-security/bastille/files/accept_os_flag_in_backend.patch
 create mode 100644 recipes-security/bastille/files/allow_os_with_assess.patch
 create mode 100644 recipes-security/bastille/files/call_output_config.patch
 create mode 100644 recipes-security/bastille/files/do_not_apply_config.patch
 create mode 100644 recipes-security/bastille/files/edit_usage_message.patch
 create mode 100644 recipes-security/bastille/files/find_existing_config.patch
 create mode 100644 recipes-security/bastille/files/fix_missing_use_directives.patch
 create mode 100644 recipes-security/bastille/files/fix_number_of_modules.patch
 rename recipes-security/bastille/files/{yocto-standard-patch.patch => fixed_defined_warnings.patch} (65%)
 create mode 100644 recipes-security/bastille/files/organize_distro_discovery.patch
 create mode 100644 recipes-security/bastille/files/remove_questions_text_file_references.patch
 create mode 100755 recipes-security/bastille/files/set_required_questions.py
 create mode 100644 recipes-security/bastille/files/simplify_B_place.patch
 create mode 100644 recipes-security/bastille/files/upgrade_options_processing.patch

-- 
1.7.10.4


