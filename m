Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA91CE01443
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 08:57:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Jul 2012 08:57:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="160581368"
Received: from btwarden-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.162])
	by orsmga001.jf.intel.com with ESMTP; 02 Jul 2012 08:57:02 -0700
Message-ID: <4FF1C475.9090502@linux.intel.com>
Date: Mon, 02 Jul 2012 08:55:33 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1341222778.git.paul.eggleton@linux.intel.com>
	<140b0d7e96a6b852346e415b91d26f1d41ac88ea.1341222778.git.paul.eggleton@linux.intel.com>
In-Reply-To: <140b0d7e96a6b852346e415b91d26f1d41ac88ea.1341222778.git.paul.eggleton@linux.intel.com>
X-Enigmail-Version: 1.4.2
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-docs] [PATCH 2/5] dev-manual: tidy up "How to Submit a Change" section
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 02 Jul 2012 15:57:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 07/02/2012 02:54 AM, Paul Eggleton wrote:
> * Change some of the language and patch submission directions to
>   correctly represent how we work together with OpenEmbedded (this
>   changed with the introduction of OE-Core a few releases ago).
> * Correct --help option to -h for pull request scripts

That fixes Bug 2671, consider adding the tag to the commit header.

[YOCTO #2671]

> * Clarify commit message guidelines
> * Touch up a few other bits and pieces
> 
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  documentation/dev-manual/dev-manual-newbie.xml |  119 ++++++++++++------------
>  1 file changed, 59 insertions(+), 60 deletions(-)
> 
> diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation/dev-manual/dev-manual-newbie.xml
> index 6a8d39c..4a39a59 100644
> --- a/documentation/dev-manual/dev-manual-newbie.xml
> +++ b/documentation/dev-manual/dev-manual-newbie.xml
> @@ -855,54 +855,53 @@
>              <listitem><para>Submit the bug by clicking the "Submit Bug" button.</para></listitem>
>          </orderedlist>
>      </para>
> - 
> -    <note>
> -        Bugs in the Yocto Project Bugzilla follow naming convention: 
> -        <filename>[YOCTO #&lt;number&gt;]</filename>, where <filename>&lt;number&gt;</filename> is the 
> -        assigned defect ID used in Bugzilla.  
> -        So, for example, a valid way to refer to a defect would be <filename>[YOCTO #1011]</filename>.   
> -        This convention becomes important if you are submitting patches against the Yocto Project 
> -        code itself.
> -    </note>
>  </section>
>  
>  <section id='how-to-submit-a-change'>
>      <title>How to Submit a Change</title>
>  
>      <para>
> -        Contributions to the Yocto Project are very welcome. 
> -        Because the Yocto Project is extremely configurable and flexible, we recognize that developers 
> +        Contributions to the Yocto Project and OpenEmbedded are very welcome.
> +        Because the system is extremely configurable and flexible, we recognize that developers
>          will want to extend, configure or optimize it for their specific uses.
> -        You should send patches to the appropriate Yocto Project mailing list to get them 
> -        in front of the Yocto Project Maintainer.
> -        For a list of the Yocto Project mailing lists, see the
> +        You should send patches to the appropriate mailing list so that they
> +        can be reviewed and merged by the appropriate maintainer.
> +        For a list of the Yocto Project and related mailing lists, see the
>          "<ulink url='&YOCTO_DOCS_REF_URL;#resources-mailinglist'>Mailing lists</ulink>" section in 
>          The Yocto Project Reference Manual.
>      </para>
>  
>      <para>
> -        The following is some guidance on which mailing list to use for what type of defect:
> +        The following is some guidance on which mailing list to use for what type of change:
>          <itemizedlist>
> -            <listitem><para>For defects against the Yocto Project build system Poky, send 
> -                your patch to the  
> -                <ulink url='&YOCTO_LISTS_URL;/listinfo/poky'></ulink> mailing list. 
> -                This mailing list corresponds to issues that are not specific to the Yocto Project but
> -                are part of the OE-core.
> -                For example, a defect against anything in the <filename>meta</filename> layer 
> -                or the BitBake Manual could be sent to this mailing list.</para></listitem>
> -            <listitem><para>For defects against Yocto-specific layers, tools, and Yocto Project 
> -                documentation use the 
> -                <ulink url='&YOCTO_LISTS_URL;/listinfo/yocto'></ulink> mailing list.
> -                This mailing list corresponds to Yocto-specific areas such as 
> -                <filename>meta-yocto</filename>, <filename>meta-intel</filename>, 
> -                <filename>linux-yocto</filename>, and <filename>documentation</filename>.</para></listitem>
> +            <listitem><para>For changes to the core metadata, send your patch to the
> +                <ulink url='&OE_LISTS_URL;/listinfo/openembedded-core'>openembedded-core</ulink> mailing list.
> +                For example, a change to anything under the <filename>meta</filename> or
> +                <filename>scripts</filename> directories
> +                should be sent to this mailing list.</para></listitem>
> +            <listitem><para>For changes to BitBake (anything under the <filename>bitbake</filename>
> +                directory), send your patch to the
> +                <ulink url='&OE_LISTS_URL;/listinfo/bitbake-devel'>bitbake-devel</ulink> mailing list.</para></listitem>
> +            <listitem><para>For changes to <filename>meta-yocto</filename>, send your patch to the
> +                <ulink url='&YOCTO_LISTS_URL;/listinfo/poky'>poky</ulink> mailing list.</para></listitem>
> +            <listitem><para>For changes to other layers hosted on yoctoproject.org (unless the
> +                layer's documentation specifies otherwise), tools, and Yocto Project
> +                documentation, use the
> +                <ulink url='&YOCTO_LISTS_URL;/listinfo/yocto'>yocto</ulink> mailing list.</para></listitem>
> +            <listitem><para>For additional recipes that do not fit into the core metadata,
> +                you should determine which layer the recipe should go into and submit the
> +                change in the manner recommended by the documentation (e.g. README) supplied
> +                with the layer. If in doubt, please ask on the
> +                <ulink url='&YOCTO_LISTS_URL;/listinfo/yocto'>yocto</ulink> or
> +                <ulink url='&OE_LISTS_URL;/listinfo/openembedded-devel'>openembedded-devel</ulink>
> +                mailing lists.</para></listitem>
>          </itemizedlist>      
>      </para>
>  
>      <para>  
>          When you send a patch, be sure to include a "Signed-off-by:"
>          line in the same style as required by the Linux kernel. 
> -        Adding this line signifies the developer has agreed to the Developer's Certificate of Origin 1.1
> +        Adding this line signifies that you, the submitter, have agreed to the Developer's Certificate of Origin 1.1
>          as follows:
>          <literallayout class='monospaced'>
>       Developer's Certificate of Origin 1.1
> @@ -931,52 +930,52 @@
>           maintained indefinitely and may be redistributed consistent with
>           this project or the open source license(s) involved.
>          </literallayout>
> -        A Poky contributions tree (<filename>poky-contrib</filename>, 
> -        <filename>git://git.yoctoproject.org/poky-contrib.git</filename>)
> -        exists for contributors to stage contributions.
> -        If people desire such access, please ask on the mailing list. 
> -        Usually, the Yocto Project team will grant access to anyone with a proven track 
> -        record of good patches.
>      </para>
>  
>      <para>
>          In a collaborative environment, it is necessary to have some sort of standard 
>          or method through which you submit changes.  
>          Otherwise, things could get quite chaotic.
> -        One general practice to follow is to make small, controlled changes to the 
> -        Yocto Project.
> -        Keeping changes small and isolated lets you best keep pace with future Yocto Project changes.
> +        One general practice to follow is to make small, controlled changes.
> +        Keeping changes small and isolated aids review, makes merging/rebasing easier
> +        and keeps the change history clean when anyone needs to refer to it in future.
>      </para>
>  
>      <para>
> -        When you create a commit, you must follow certain standards established by the
> -        Yocto Project development team. 
> -        For each commit, you must provide a single-line summary of the change and you 
> -        almost always provide a more detailed description of what you did (i.e. the body 
> -        of the commit).
> +        When you make a commit, you must follow certain standards established by the
> +        OpenEmbedded and Yocto Project development teams.
> +        For each commit, you must provide a single-line summary of the change and you
> +        should almost always provide a more detailed description of what you did (i.e.
> +        the body of the commit message).
>          The only exceptions for not providing a detailed description would be if your 
>          change is a simple, self-explanatory change that needs no description.
> -        Here are the Yocto Project commit message guidelines:
> +        Here are the guidelines for composing a commit message:
>          <itemizedlist>
>              <listitem><para>Provide a single-line, short summary of the change.
> -                This summary is typically viewable by source control systems.
> +                This summary is typically viewable in the "shortlist" of changes.
>                  Thus, providing something short and descriptive that gives the reader 
>                  a summary of the change is useful when viewing a list of many commits.
> +                This should be prefixed by the recipe name (if changing a recipe), or
> +                else the short form path to the file being changed.
>                  </para></listitem>
>              <listitem><para>For the body of the commit message, provide detailed information
>                  that describes what you changed, why you made the change, and the approach
> -                you used.  
> +                you used. It may also be helpful if you mention how you tested the change.
>                  Provide as much detail as you can in the body of the commit message.
>                  </para></listitem>
>              <listitem><para>If the change addresses a specific bug or issue that is 
> -                associated with a bug-tracking ID, prefix your detailed description
> -                with the bug or issue ID.  
> -                For example, the Yocto Project tracks bugs using a bug-naming convention.
> -                Any commits that address a bug must start with the bug ID in the description
> -                as follows:
> +                associated with a bug-tracking ID, include a reference to that ID in
> +                your detailed description.
> +                For example, the Yocto Project uses a specific convention for bug
> +                references - any commit that addresses a specific bug should include the
> +                bug ID in the description (typically at the end) as follows:
>                  <literallayout class='monospaced'>
> -     YOCTO #&lt;bug-id&gt;:  &lt;Detailed description of commit&gt;
> +     &lt;detailed description of change&gt;
> +
> +     [YOCTO #&lt;bug-id&gt;]
>                  </literallayout></para></listitem>
> +                Where &lt;bug-id&gt; is replaced with the specific bug ID from the
> +                Yocto Project Bugzilla instance.
>          </itemizedlist>
>      </para>
>  
> @@ -997,11 +996,11 @@
>              The basic flow for pushing a change to an upstream "contrib" Git repository is as follows:
>              <itemizedlist>
>                  <listitem><para>Make your changes in your local Git repository.</para></listitem>
> -                <listitem><para>Stage your commit (or change) by using the <filename>git add</filename>
> -                    command.</para></listitem>
> +                <listitem><para>Stage your changes by using the <filename>git add</filename>
> +                    command on each file you changed.</para></listitem>
>                  <listitem><para>Commit the change by using the <filename>git commit</filename>
>                      command and push it to the "contrib" repository.  
> -                    Be sure to provide a commit message that follows the project’s commit standards
> +                    Be sure to provide a commit message that follows the project’s commit message standards
>                      as described earlier.</para></listitem>
>                  <listitem><para>Notify the maintainer that you have pushed a change by making a pull 
>                      request.
> @@ -1012,10 +1011,10 @@
>                      You can find these scripts in the <filename>scripts</filename> directory of the 
>                      Yocto Project file structure.</para>
>                      <para>For help on using these scripts, simply provide the 
> -                    <filename>--help</filename> argument as follows:
> +                    <filename>-h</filename> argument as follows:
>                      <literallayout class='monospaced'>
> -     $ ~/poky/scripts/create-pull-request --help
> -     $ ~/poky/scripts/send-pull-request --help
> +     $ ~/poky/scripts/create-pull-request -h
> +     $ ~/poky/scripts/send-pull-request -h
>                      </literallayout></para></listitem>
>              </itemizedlist>
>          </para>
> @@ -1035,8 +1034,8 @@
>              Here is a general procedure:
>              <itemizedlist>
>                  <listitem><para>Make your changes in your local Git repository.</para></listitem>
> -                <listitem><para>Stage your commit (or change) by using the <filename>git add</filename>
> -                    command.</para></listitem>
> +                <listitem><para>Stage your changes by using the <filename>git add</filename>
> +                    command on each file you changed.</para></listitem>
>                  <listitem><para>Commit the change by using the 
>                      <filename>git commit --signoff</filename> command.
>                      Using the <filename>--signoff</filename> option identifies you as the person 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



