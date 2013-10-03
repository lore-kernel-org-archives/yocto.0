Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C83EE01698
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2013 21:09:58 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id to1so4090388ieb.23
	for <yocto@yoctoproject.org>; Wed, 02 Oct 2013 21:09:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=JSPVnfHI8olzHw67ML3klFSSjvl31eCpU09hl9P+RdU=;
	b=leBrQLoNy7AQpDHy3RH6IMMnfQtEcda/ByjYiWBv6cvAfwUq1PK4Qh/H+cWHQwzZPS
	Ac1iU53Jb0HRZc79yNXTpsf2GUcOru0sMwWaS2lEq8y9nk9xAYlOEn+o1TBg4ke/ANzc
	uUvpvb5CmvjMXZFwFxoXLe9fmnCEt6FT/sA2WkotJKffBRAayWbC7tBB0TFOy58d3/bY
	iGhvoZ3FH+pH9iSqv4DYQjekZxzUnblVS0AZd+QRwKrirYgKebfjHWQJ38UCHRyACARf
	lnWK6qeOeabPUripGgVIRkKDNpCzy5zjr0WSlfgur/hSaupPP1dm+DOeJt3aoO7LqiOT
	QLpQ==
X-Gm-Message-State: ALoCoQkoZTiGDKwXETEGON2XsYExWDweKINt7Eu8NuaqdLIcRQEE/uZqtaE5q3jGFn0gI9zsr/1K
X-Received: by 10.50.178.234 with SMTP id db10mr493070igc.35.1380773397731;
	Wed, 02 Oct 2013 21:09:57 -0700 (PDT)
Received: from suse64-i7.site (dsl-67-55-9-50.acanac.net. [67.55.9.50])
	by mx.google.com with ESMTPSA id x6sm14893852igb.3.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 02 Oct 2013 21:09:56 -0700 (PDT)
From: Trevor Woerner <trevor.woerner@linaro.org>
To: yocto@yoctoproject.org
Date: Thu,  3 Oct 2013 00:09:32 -0400
Message-Id: <1380773372-7951-1-git-send-email-trevor.woerner@linaro.org>
X-Mailer: git-send-email 1.8.4.rc3.1.gc1ebd90
Cc: patches@linaro.org
Subject: [yocto-docs][PATCH] dev-manual: re-write runtime package management section
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
X-List-Received-Date: Thu, 03 Oct 2013 04:09:59 -0000

Signed-off-by: Trevor Woerner <trevor.woerner@linaro.org>
---
 .../dev-manual/dev-manual-common-tasks.xml         | 471 ++++++++++++++-------
 1 file changed, 321 insertions(+), 150 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index fe34e8e..7b4d638 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -3605,61 +3605,179 @@
             </section>
         </section>
 
-        <section id='setting-up-runtime-package-management'>
-            <title>Setting Up Runtime Package Management</title>
-
-            <para>
-                For supported package formats, it is possible to set
-                up a repository that is a host-based package feed from which
-                you can install packages on the target system during runtime.
-                Doing so is optional and depends on the following:
+        <section id='runtime-package-management'>
+            <title>Runtime Package Management</title>
+            <para>
+                Regardless of anything else, during a build bitbake will
+                transform a recipe into one or more packages. For example,
+                the <filename>bash</filename> recipe currently produces the
+                following packages: <filename>bash-dbg bash-staticdev bash-dev
+                bash-doc bash-locale bash</filename>. Not all generated
+                packages will be included in an image.
+            </para><para>
+                In several situations you might want to have the ability to
+                update, add, remove, query, etc the packages on a target
+                device at runtime (i.e. without having to generate a new
+                image). Examples of such situations include:
                 <itemizedlist>
                     <listitem><para>
-                        You take specific steps to set up the feed.
-                        </para></listitem>
+                        You want to provide in-the-field updates to deployed
+                        devices (e.g. for security updates).
+                    </para></listitem>
                     <listitem><para>
-                        When you build your image, you select to use the
-                        appropriate package manager by setting the
-                        <ulink url='&YOCTO_DOCS_REF_URL;#var-PACKAGE_CLASSES'><filename>PACKAGE_CLASSES</filename></ulink>
-                        variable.
-                        </para></listitem>
+                        You want to have a fast turn-around development cycle
+                        for one or more applications which run on your device.
+                    </para></listitem>
                     <listitem><para>
-                        You have a web server, such as Apache 2,
-                        installed and configured on the development host.
-                        </para></listitem>
+                        You want to temporarily install the "debug" packages
+                        of various applications on your device so that
+                        debugging can be greatly improved (access to symbols,
+                        source debugging, etc).
+                    </para></listitem>
                     <listitem><para>
-                        You enable package management on the target by
-                        listing "package-management" in the
-                        <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_FEATURES'><filename>IMAGE_FEATURES</filename></ulink>
-                        variable.
-                        </para></listitem>
+                        You want to deploy a more minimal package selection of
+                        your device but allow in-the-field updates to add a
+                        larger selection for customization.
+                    </para></listitem>
                 </itemizedlist>
-            </para>
+            </para><para>
+                In all these situations you have something similar to a more
+                traditional Linux distribution in that in-field devices
+                are able to grab pre-compiled packages from a server for
+                installation/update. This is what is termed "runtime package
+                management". In order to use runtime package management you
+                need a host/server machine which serves up the pre-compiled
+                packages plus the required meta data, and you need package
+                manipulation tools on the target. Note that the build machine
+                is a likely candidate to act as the server, but the build
+                machine doesn't necessarily have to be the package server;
+                the build machine could push its artifacts to another (e.g.
+                Internet-facing) machine which acts as the server.
+            </para><para>
+                A simple build which targets just one device will produce
+                more than one package database. In other words, the packages
+                produced by a build will be separated out into a couple of
+                different package groupings based on criteria such as the
+                target's CPU architecture, the target board, or the C library
+                used on the target. For example, a build targetting the
+                <filename>qemuarm</filename> device will produce the following
+                3 package databases: <filename>all</filename>,
+                <filename>armv5te</filename>, and
+                <filename>qemuarm</filename>. If I wanted my
+                <filename>qemuarm</filename> device to be aware of all the
+                packages which were available to it, I would need to point it
+                to each of these databases individually. In a similar way, a
+                traditional Linux distribution usually is configured to be
+                aware of a number of software repositories from which it
+                will retrieve packages.
+            </para><para><note>
+                Using runtime package management is completely optional and
+                not required for a successful build or deployment in any way.
+                But if you want to make use of runtime package management
+                you'll need to do a couple things above and beyond the basics.
+            </note></para>
+
+            <section id='runtime-package-management-build'>
+                <title>Build Considerations</title>
+                <para>
+                    In order to provide support for runtime package management
+                    there are some build considerations of which to be aware.
+                </para><para>
+                    When bitbake generates packages it needs to know in
+                    which format(s) you want the packages to be generated.
+                    In your configuration this is handled by the
+                    <ulink url='&YOCTO_DOCS_REF_URL;#var-PACKAGE_CLASSES'><filename>PACKAGE_CLASSES</filename></ulink>
+                    variable. Note that you can choose to have more than one,
+                    but at least one is required.
+                </para><para>
+                    If you would like your image to start off with a basic
+                    package database of the packages in your current build
+                    as well as having the relevant tools available on the
+                    target for runtime package management, you can include
+                    "package-management" in the
+                    <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_FEATURES'><filename>IMAGE_FEATURES</filename></ulink>
+                    variable. Including "package-management" in this
+                    configuration variable ensures that when the image
+                    is assembled for your target it will include
+                    the currently-known package databases as well as
+                    the target-specific tools required for runtime
+                    package management to be performed on the target.
+                    Note, however, this isn't strictly necessary.
+                    You could start your image off without any databases
+                    but only include the required on-target package
+                    tool(s) (for example you would include "opkg" in your
+                    <ulink url='&YOCTO_DOCS_REF_URL;#var-IMAGE_INSTALL'><filename>IMAGE_INSTALL</filename></ulink>
+                    variable if you are using the IPK package format). You can
+                    then initialize your target's package database(s) later,
+                    once your image is up and running.
+                </para><para>
+                    Whenever you perform any sort of build step which can
+                    potentially generate a package or modify an existing
+                    package, it is always a good idea to re-generate the
+                    package index with:
+                    <literallayout class='monospaced'>
+    $ bitbake package-index
+                    </literallayout>
+                    Note that it is not sufficient to simply do:
+                    <literallayout class='monospaced'>
+    $ bitbake &lt;some-package&gt; package-index
+                    </literallayout>
+                    since bitbake won't properly schedule the
+                    <filename>package-index</filename> target fully after any
+                    other target has completed. Therefore, be sure to run the
+                    package update step separately.
+                </para><para>
+                    As described below in the
+                    <link linkend='runtime-package-management-target-ipk'>Using IPK</link>
+                    section, if you are using IPK as your package format, you
+                    can make use of the
+                    <filename>distro-feed-configs</filename> recipe provided
+                    by <filename>meta-oe</filename> in order to configure your
+                    target to use your IPK databases.
+                </para><para>
+                    When your build is complete your packages will show up in
+                    the
+                    <filename>${TMPDIR}/deploy/&lt;package-format&gt;</filename>
+                    directory. For example, if <filename>${TMPDIR}</filename>
+                    is <filename>tmp</filename> and your selected package type
+                    is IPK, then your IPK packages will be available in
+                    <filename>tmp/deploy/ipk</filename>.
+                </para>
+            </section>
 
-            <para>
-                The following list provides steps for setting up the optional 
-                repository regardless of the package format.
-                Once you work through these generic steps, see the 
-                "<link linkend='runtime-package-management-deb-rpm'>Using RPM</link>"
-                section or the  
-                "<link linkend='runtime-package-management-ipk'>Using IPK</link>"
-                section for remaining steps specific to the package type.
-                <note>
-                    The example assumes you are using the Apache 2 server:
-                </note>
-                <orderedlist>
-                    <listitem><para>
-                        Add the directory to your Apache configuration, which
-                        you can find at
-                        <filename>/etc/httpd/conf/httpd.conf</filename>.
-                        Use commands similar to these on the development system.
-                        These example commands assume a top-level
-                        <link linkend='source-directory'>Source Directory</link>
-                        named <filename>poky</filename> in your home directory.
-                        The example also assumes an RPM package type. 
-                        If you are using a different package type, such as 
-                        IPK, use "ipk" in the pathnames:
-                        <literallayout class='monospaced'>
+            <section id='runtime-package-management-server'>
+                <title>Host or Server Machine Setup</title>
+                <para>
+                    Typically packages are served from a server via HTTP, but
+                    other protocols are possible. If we assume you want to
+                    use HTTP, then you would need to setup and configure a
+                    web server, such as Apache 2 or lighttpd, on the machine
+                    serving the packages. As mentioned above, the build
+                    machine can act as the package server; in the following
+                    server machine setups it is assumed the build machine is
+                    also the server.
+                </para>
+
+                <section id='package-server-apache'>
+                    <title>Serving Packages via Apache 2</title>
+                    <para>
+                        This example assumes you are using the Apache 2
+                        server:
+                        <orderedlist>
+                            <listitem><para>
+                                Add the directory to your Apache
+                                configuration, which you can find at
+                                <filename>/etc/httpd/conf/httpd.conf</filename>.
+                                Use commands similar to these on the
+                                development system. These example
+                                commands assume a top-level
+                                <link linkend='source-directory'>Source Directory</link>
+                                named <filename>poky</filename> in your home
+                                directory. The example also assumes an RPM
+                                package type. If you are using a different
+                                package type, such as IPK, use "ipk" in the
+                                pathnames:
+                                <literallayout class='monospaced'>
      &lt;VirtualHost *:80&gt;
        ....
          Alias /rpm ~/poky/build/tmp/deploy/rpm
@@ -3667,119 +3785,172 @@
            Options +Indexes
          &lt;/Directory&gt;
      &lt;/VirtualHost&gt;
+                                </literallayout>
+                            </para></listitem>
+                            <listitem><para>
+                                Reload the Apache configuration as follows.
+                                For all commands, be sure you have root
+                                privileges.
+                                </para><para>
+                                If your development system is using Fedora or
+                                CentOS, use the following:
+                                <literallayout class='monospaced'>
+     # service httpd reload
+                                </literallayout>
+                                For Ubuntu and Debian, use the following:
+                                <literallayout class='monospaced'>
+     # /etc/init.d/apache2 reload
+                                </literallayout>
+                                For OpenSUSE, use the following:
+                                <literallayout class='monospaced'>
+     # /etc/init.d/apache2 reload
+                                </literallayout>
+                            </para></listitem>
+                            <listitem><para>
+                                If you are using Security-Enhanced Linux
+                                (SELinux), you need to label the files as
+                                being accessible through Apache. Use the
+                                following command from the development host
+                                (this example assumes RPM package types):
+                                <literallayout class='monospaced'>
+     # chcon -R -h -t httpd_sys_content_t tmp/deploy/rpm
+                                </literallayout>
+                            </para></listitem>
+                        </orderedlist>
+                    </para>
+                </section>
+
+                <section id='package-server-lighttpd'>
+                    <title>Serving Packages via lighttpd</title>
+                    <para>
+                        If you are using lighttpd all you need
+                        to do is to provide a link from your
+                        ${TMPDIR}/deploy/&lt;package-format&gt; directory to
+                        lighttpd's document-root. You can determine the
+                        specifics of your lighttpd installation by looking
+                        through its configuration file which is usually found
+                        at: <filename>/etc/lighttpd/lighttpd.conf</filename>.
+                    </para><para>
+                        For example, if you are using IPK, if
+                        lighttpd's document-root is set to
+                        <filename>/var/www/lighttpd</filename>, and if you had
+                        packages for a target named "BOARD"
+                        then you might create a link from your build location
+                        to lighttpd's document-root as follows:
+                        <literallayout class='monospaced'>
+    # ln -s $(PWD)/tmp/deploy/ipk /var/www/lighttpd/BOARD-dir
                         </literallayout>
-                        </para></listitem>
-                    <listitem><para>
-                        Reload the Apache configuration as follows.
-                        For all commands, be sure you have root privileges.
-                        </para>
-                        <para>
-                        If your development system is using Fedora or
-                        CentOS, use the following:
+                    </para><para>
+                        At this point you need to start the lighttpd server.
+                        The way in which you start the server will vary by
+                        distribution, but one basic way to start it by hand
+                        would be:
                         <literallayout class='monospaced'>
-     service httpd reload
+    # lighttpd -f /etc/lighttpd/lighttpd.conf
                         </literallayout>
-                        For Ubuntu and Debian, use the following:
+                    </para>
+                </section>
+            </section>
+
+            <section id='runtime-package-management-target'>
+                <title>Target Setup</title>
+
+                <section id='runtime-package-management-target-rpm'>
+                    <title>Using RPM</title>
+                    <para>
+                        The application for performing runtime package
+                        management of RPM packages on the target is called
+                        <filename>smart</filename>.
+                    </para><para>
+                        On the target machine, you need to inform
+                        <filename>smart</filename> of every package database
+                        you wish to use. As an example, suppose your target
+                        device can use the following 3 package databases from
+                        a server named <filename>server.name</filename>:
+                        <filename>all</filename>, <filename>i586</filename>,
+                        and <filename>qemux86</filename>. Given this example,
+                        issue the following commands on the target:
                         <literallayout class='monospaced'>
-     /etc/init.d/apache2 reload
+     # smart channel --add all type=rpm-md baseurl=http://server.name/rpm/all
+     # smart channel --add i585 type=rpm-md baseurl=http://server.name/rpm/i586
+     # smart channel --add qemux86 type=rpm-md baseurl=http://server.name/rpm/qemux86
                         </literallayout>
-                        For OpenSUSE, use the following:
+                        Also from the target machine, fetch the repository
+                        information using this command:
                         <literallayout class='monospaced'>
-     /etc/init.d/apache2 reload
+     # smart update
                         </literallayout>
-                        </para></listitem>
-                    <listitem><para>
-                        Re-generate the package index:
+                        You can now use the <filename>smart query</filename>
+                        and <filename>smart install</filename> commands to
+                        find and install packages from the repositories.
+                    </para>
+                </section>
+
+                <section id='runtime-package-management-target-ipk'>
+                    <title>Using IPK</title>
+                    <para>
+                        The application for performing runtime package
+                        management of IPK packages on the target is called
+                        <filename>opkg</filename>.
+                    </para><para>
+                        In order to inform <filename>opkg</filename> of the
+                        package databases you wish to use, simply create one
+                        or more <filename>*.conf</filename> files in the
+                        <filename>/etc/opkg</filename> directory on the target
+                        and <filename>opkg</filename> will use them to find
+                        its available package databases. As an example if you
+                        configured your HTTP server on your machine named
+                        <filename>www.mysite.com</filename> to serve files
+                        from a <filename>BOARD-dir</filename> directory under
+                        its document-root you might create a configuration
+                        file on the target called
+                        <filename>/etc/opkg/base-feeds.conf</filename> which
+                        contains:
                         <literallayout class='monospaced'>
-     bitbake package-index
+     src/gz all http://www.mysite.com/BOARD-dir/all
+     src/gz armv7a http://www.mysite.com/BOARD-dir/armv7a
+     src/gz beagleboard http://www.mysite.com/BOARD-dir/beagleboard
                         </literallayout>
-                        </para></listitem>
-                    <listitem><para>
-                        If you are using Security-Enhanced Linux (SELinux),
-                        you need to label the files as being accessible
-                        through Apache.
-                        Use the following command from the development host.
-                        Again, the example assumes RPM package types:
+                    </para>
+                    <note>
+                        As a way of making it easier to generate and make
+                        these IPK configuration files available on your
+                        target, the <filename>meta-oe</filename> layer
+                        provides a recipe called
+                        <filename>distro-feed-configs</filename> (which
+                        provides a package by the same name). When you
+                        include this package into your image, it will
+                        automatically generate and include a set of
+                        <filename>*.conf</filename> files in the image's
+                        <filename>/etc/opkg</filename> directory which will
+                        provide your target's opkg tool with any and all
+                        package databases your build will generate. The only
+                        catch is that this recipe can't possibly imagine your
+                        server's DNS name/IP address, so somewhere in your
+                        configuration you need to set a variable called
+                        <filename>DISTRO_FEED_URI</filename> which will point
+                        to your server and the location within the
+                        document-root which contains the databases. For
+                        example: if you are serving your packages over HTTP,
+                        your server's IP address is 192.168.7.1, and your
+                        databases are located in a directory called
+                        <filename>BOARD-dir</filename> underneath your HTTP
+                        server's document-root then set
+                        <filename>DISTRO_FEED_URI</filename> to
+                        <filename>http://192.168.7.1/BOARD-dir</filename>.
+                    </note>
+                    <para>
+                        On the target machine, fetch (or refresh) the
+                        repository information using this command:
                         <literallayout class='monospaced'>
-     chcon -R -h -t httpd_sys_content_t tmp/deploy/rpm
+     # opkg update
                         </literallayout>
-                        </para></listitem>
-                </orderedlist>
-            </para>
-
-            <section id='runtime-package-management-deb-rpm'>
-                <title>Using RPM</title>
-
-                <para>
-                    Following are RPM-specific steps needed for setting up the 
-                    optional repository.
-                    Perform these steps after working through the common steps
-                    at the start of this section:
-                    <orderedlist>
-                        <listitem><para>
-                            On the target machine, add the repository to Smart 
-                            for every package architecture.
-                            To see the list of package architectures, list 
-                            the contents of the 
-                          setting-up-runtime-package-management  <filename>tmp/deploy/rpm</filename> directory
-                            on the host.</para>
-                            <para>
-                            As an example, suppose you list the contents of the 
-                            directory and discover three architectures:
-                            <filename>all</filename>, <filename>i586</filename>, 
-                            and <filename>qemux86</filename>.
-                            Given this example, use the following commands:
-                            <literallayout class='monospaced'>
-     smart channel &dash;&dash;add all type=rpm-md baseurl=http://server.name/rpm/all
-     smart channel &dash;&dash;add i585 type=rpm-md baseurl=http://server.name/rpm/i586
-     smart channel &dash;&dash;add qemux86 type=rpm-md baseurl=http://server.name/rpm/qemux86
-                            </literallayout>
-                            </para></listitem>
-                        <listitem><para>
-                            Also from the target machine, fetch the repository
-                            information using this command:
-                            <literallayout class='monospaced'>
-     smart update
-                            </literallayout>
-                            </para></listitem>
-                    </orderedlist>
-                    You can now use the <filename>smart query</filename>
-                    and <filename>smart install</filename> commands to find 
-                    and install packages from the repositories.
-                </para>
-            </section>
-
-            <section id='runtime-package-management-ipk'>
-                <title>Using IPK</title>
-
-                <para>
-                    Following are IPK-specific steps needed for setting up the 
-                    optional repository.
-                    Perform these steps after working through the common steps
-                    at the start of this section:
-                    <orderedlist>
-                        <listitem><para>Install packages onto an
-                            existing running system by first sharing the
-                            <filename>tmp/deploy/ipk/</filename> directory
-                            through a web server and then by changing
-                            <filename>/etc/opkg/base-feeds.conf</filename>
-                            to point at the shared server.
-                            Following is an example:
-                            <literallayout class='monospaced'>
-     src/gz all http://www.mysite.com/somedir/deploy/ipk/all
-     src/gz armv7a http://www.mysite.com/somedir/deploy/ipk/armv7a
-     src/gz beagleboard http://www.mysite.com/somedir/deploy/ipk/beagleboard
-                            </literallayout></para></listitem>
-                        <listitem><para>From the target machine, fetch the
-                            repository information using this command:
-                            <literallayout class='monospaced'>
-     opkg update
-                            </literallayout></para></listitem>
-                    </orderedlist>
-                    You can now use the <filename>opkg list</filename> and 
-                    <filename>opkg install</filename> commands to find and 
-                    install packages from the repositories.
-                </para>
+                        You can now use the <filename>opkg list</filename> and 
+                        <filename>opkg install</filename> commands to find and 
+                        install packages from the repositories.
+                    </para><para>
+                    </para>
+                </section>
             </section>
         </section>
 
-- 
1.8.4.rc3.1.gc1ebd90


